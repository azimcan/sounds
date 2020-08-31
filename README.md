# Docker

Created: Aug 24, 2020 3:48 PM

## Rails Docker Kurulum

[How to start your Rails app in a Docker container](https://medium.com/@yuliaoletskaya/how-to-start-your-rails-app-in-a-docker-container-9f9ce29ff6d6)

[Rails on Docker: Create and run Rails app using Docker - Episode #1](https://www.youtube.com/watch?v=a-jcTib9ZPA)

[Quickstart: Compose and Rails](https://docs.docker.com/compose/rails/)

---

- Dockerfile komutları

    ### FROM

    - Dockerfile içinde en az bir tane FROM olması ve ilk başlangıç satırı olarak kullanılması gerekiyor.
    - Her docker image başka bir image baz alınarak yapılır.

    ### COPY ve ADD

    - Bilgisayarlarınızdaki dosya veya klasörleri image içersindeki belirtilen yere kopyalar.
    - ADD sunduğu olanaklar bakımından biraz daha gelişmiştir.

    ### WORKDİR

    - Çalışma klasörünü belirtilen yere değiştirir.
    - Bundan sonra tüm RUN, CMD, ENTRYPOİNT, COPY ve ADD belirtilen klasörde gibi işlemleri yapar.

    ### RUN

    - Belirtilen komutları image içersinde çalıştırır

    ### CMD

    - Doçkfile içinde sadece bir tane CMD komutu olabilir.
    - Birden fazla verilirse sadece sonuncu kullanılır
    - Çalışma sırasını ayarlamak için kullanılır.

    ### ENV

    - Environment Variables vermek için kullanılır
    - İmage içersinde kullanılması gereken değerleri dışarıdan sağlamak için bu değerler docker run ilke çalışırken değişebilir ve eklenebilir.
- Docker komutları

    "docker-deneme" adında ve "son" tağında bir image oluşturur.

    ```bash
    docker build -t docker-deneme:son .
    ```

    Oluşturulan imageleri listeler.

    ```bash
     docker images
    ```

    Seçilen image silinir.

    ```bash
    docker rmi docker-deneme
    ```

    Oluşturulan image'i çalıştırır.

    ```bash
    docker run docker-deneme:son
    ```

    Oluşturulan containerları listeler.

    ```bash
    docker ps
    docker ps -a # Aktif olmayan containerlari da listeler
    ```

Dockerfile

```docker
FROM ruby:latest

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y build-essential nodejs yarn

ENV APP_HOME /docker_rails
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

RUN gem install bundler
ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME
RUN yarn install --check-files

CMD ["rails","server","-b","0.0.0.0"]
```

Gemfile

```ruby
source 'https://rubygems.org'
gem 'rails'
```

```bash
touch Gemfile.lock
```

docker-compose.yml

```yaml
version: '3'

services:
	postgres:
		image: postgres:latest
		volumes:
      - ./tmp/db:/var/lib/postgresql/data
    environment:
      POSTGRES_PASSWORD: password
  rails:
    build: .
    command: bash -c "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"
    volumes:
      - .:/docker_rails
    ports:
      - "3000:3000"
    depends_on:
      - db
```

```bash
sudo docker-compose run app rails new . --force --database=postgresql --skip-bundle
sudo chown -R $USER:$USER .
sudo docker-compose build
```

config/database.yml

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  pool: 5

development:
  <<: *default
  database: myapp_development

test:
  <<: *default
  database: myapp_test
```

```bash
sudo docker-compose up
sudo docker-compose run web rake db:create
```
