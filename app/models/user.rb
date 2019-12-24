class User < ApplicationRecord
  has_secure_password

  validates :name,
            presence: true,
            length: { in: 2..16 }

  validates :surname,
            presence: true,
            length: { in: 2..16 }

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            email: true

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { in: 4..16 }

  validates :password,
            presence: true,
            length: { minimum: 8 }

  def user_detail
    "#{name} #{surname} -- #{email} -- #{password}"
  end
end
