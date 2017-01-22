class User < ApplicationRecord
  rolify
  has_many :grades
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         after_create :assign_role

  def assign_role
    add_role(:student)
  end
end
