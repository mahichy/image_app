class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

         validates :fullname, presence: true, length: {maximum: 50}

         has_one :payment
         accepts_nested_attributes_for :payment
end
