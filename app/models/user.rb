class User < ApplicationRecord
  has_many :costumes, dependent: :destroy
  has_many :rents, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def create
  end
end
