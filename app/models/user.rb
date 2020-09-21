class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :sounds
  has_many :orders

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

  def to_param
    username
  end
end
