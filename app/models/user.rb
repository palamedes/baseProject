class User < ActiveRecord::Base

  # Rolify for user roles
  rolify before_add: :remove_existing_roles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable, :omniauthable



  private

  # Ensure that no more than one role exists for a user
  def remove_existing_roles(role)
    self.roles = [] unless has_role?(role.name)
  end

end
