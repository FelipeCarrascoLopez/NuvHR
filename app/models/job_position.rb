class JobPosition < ApplicationRecord
  belongs_to :department
  has_many :employees

end
