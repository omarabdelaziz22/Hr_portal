class Employee < ApplicationRecord
  has_many :attendances
  validates :name,  presence: true , length: { in: 6..50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true , length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  VALID_MOBILE_REGEX = /\+201[0-9]+\z/
  validates :mobile, presence: true,
                 format: { with: VALID_MOBILE_REGEX },
                 length: { is: 13 },
                 uniqueness: true
  validates :hire_date, presence: true
end
