class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def users_params
  	attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_attributes, :first_name
  	has_one :profile
  	accepts_nested_attributes_for :profile
end
end
