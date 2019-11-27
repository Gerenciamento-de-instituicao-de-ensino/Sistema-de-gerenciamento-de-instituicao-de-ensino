class Administrador < ApplicationRecord
  validates :login, uniqueness: {message: 'Already exists'},
                    presence: {message: 'Can not be blank'}
  validates :senha, presence: {message: 'Can not be blank'}
end
