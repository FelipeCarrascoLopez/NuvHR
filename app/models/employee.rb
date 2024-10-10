class Employee < ApplicationRecord
  belongs_to :department
  belongs_to :job_position

  validates :first_name, :last_name, :email, presence: true
end
