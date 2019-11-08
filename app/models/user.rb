class User < ApplicationRecord
  belongs_to :status
  has_and_belongs_to_many :divisions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist
end
