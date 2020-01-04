tags = %w( Klasik Elektronik Akustik Funk Hip-Hop Caz Pop Vokal-Ses Yeraltı Elektro House Sinematik Rock Rap Urban Westcoast Soul Melankolia Reggae Ambiyans Trap)

puts "Taglar olusturuluyor..."
tags.each do |tag|
  puts"#{tag} ..OK"
  Tag.create(tag_name: tag)
end
puts "Tamamlandi."

users = [
	{
		name: 'Azim Can',
		surname: 'KURUCA',
		username: 'azimcan',
		email: 'azimcankuruca@gmail.com',
		password: '123456789'
	},
	{
		name: 'Yasin',
		surname: 'HIZIR',
		username: 'yasin',
		email: 'yasinhizir@gmail.com',
		password: '123456789'
	},
	{
		name: 'Özhan ',
		surname: 'DALMIŞ',
		username: 'ozhan',
		email: 'ozhandalmis@gmail.com',
		password: '123456789'
	}
]
puts "Kullanicilar olusturuluyor..."
users.each do |user|
	puts"#{user} ..OK"
	User.create(user)

end
puts "Tamamlandi."

sounds = [
	{
		name: 'Tusa',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/709636759&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 50,
		user_id: 1
	},
	{
		name: 'Dance Monkey',
		tag: 'Elektro',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/632659404&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 75,
		user_id: 2
	},
	{
		name: 'Roxanne',
		tag: 'Klasik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/693902449&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 60,
		user_id: 3
	},
	{
		name: 'One',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/8107657&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 40,
		user_id: 1
	},
	{
		name: 'Lalala',
		tag: 'House',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/633309999&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 30,
		user_id: 2
	},
	{
		name: 'Adios',
		tag: 'Akustik',
		location: 'https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/667893953&color=%237a6a6e&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true',
		price: 90,
		user_id: 1
	},
]

puts "Sesler olusturuluyor..."
sounds.each do |sound|
	puts"#{sound} ..OK"
	Sound.create(sound)
end
puts "Tamamlandi."
