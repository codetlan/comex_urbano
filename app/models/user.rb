class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles




  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

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
