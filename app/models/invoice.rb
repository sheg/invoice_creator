class Invoice < ActiveRecord::Base
  has_many :items #This will later belong to a customer and a user too
  validates :total_amount, :numericality => true

end
