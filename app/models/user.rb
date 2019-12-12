class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :student
  has_many :tickets_reported, class_name: 'Ticket', foreign_key: 'reporter_id', inverse_of: 'reporter'
  has_many :tickets_assigned, class_name: 'Ticket', foreign_key: 'doer_id', inverse_of: 'doer'

  after_create :create_student_profile

  def create_student_profile
    Student.create(user_id: self.id)
  end
end
