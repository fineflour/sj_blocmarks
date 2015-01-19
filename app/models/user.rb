class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 #        :omniauthable, :omniauth_providers => [:facebook]
  has_one :list
  has_many :bookmark
  has_many :topics
  #after_create { UserMailer.welcome_email(self).deliver }
end
