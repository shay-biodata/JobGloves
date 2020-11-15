class User < ApplicationRecord
  
  has_secure_password

  has_many :requests, dependent: :destroy
  has_many :jobs, through: :requests

  
  has_many :jobs, dependent: :destroy


  validates :name , presence: true
  validates :email, presence: true,
                  format: { with: /\S+@\S+/ },
                  uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6, allow_blank: true }

  validates :employer, inclusion: { in: [true, false] ,message: "choose your goal"}

end
