class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :orders
  has_many :images
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price < 5
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
