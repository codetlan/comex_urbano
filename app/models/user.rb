class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #has_many :posts
  # roles
  #has_many :assignments
  #has_many :roles, :through => :assignments

  #def role_symbols
   # roles.map do |role|
   #   role.name.underscore.to_sym
   # end
  #end
end
