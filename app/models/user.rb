class User < ApplicationRecord
  # Associations
  has_many :comments

  # Validations
  validates :name, presence: true, uniqueness: true

  # Enumerations
  enum currency: [:ars, :usd, :eur] # Revisar buenas prácticas

  # Methods
  def free?
    price.zero?
  end
end
