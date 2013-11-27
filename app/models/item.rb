class Item < ActiveRecord::Base
  belongs_to :invoice

  validates :price, :numericality => true
  validates :quantity, :numericality => true, :presence => true
  validate :not_less_than_zero
  validates :invoice_id, :presence => true
  validates :description, :presence => true

  private
    def not_less_than_zero
      if price < 0
        errors[:price] = "cannot be less than zero"
      end
      if quantity < 0
        errors[:quantity] = "cannot be less than zero"
      end
    end
end