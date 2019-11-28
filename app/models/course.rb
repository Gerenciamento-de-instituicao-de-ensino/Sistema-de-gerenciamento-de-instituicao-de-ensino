class Course < ApplicationRecord
  belongs_to :lecturer
  has_many :students

  validates :title, presence: {message: 'Can not be blank' },
            length: { minimum: 3, too_short: 'Should have at least 3 characters' }
  validates :codigo, presence: {message: 'Can not be blank' },
                    uniqueness: {message: 'Already taken'}

end
