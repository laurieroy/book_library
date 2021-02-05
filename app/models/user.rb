class User < ApplicationRecord
  has_person_name
  has_many :books, dependent: :destroy
  has_many :libraries
  has_many :library_additions, through: :libraries, source: :book
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
