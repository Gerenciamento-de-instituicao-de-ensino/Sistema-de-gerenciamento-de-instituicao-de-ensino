class Lecturer < ApplicationRecord
  has_many :courses

  validates :name, presence: {message: 'Can not be blank' },
            length: { minimum: 3, too_short: 'Should have at least 3 characters' }
  validates :email, presence: {message: 'Can not be blank' },
            format: { with: URI::MailTo::EMAIL_REGEXP, message: 'Is not a valid one' },
            uniqueness: {message: 'Already taken'}
end
