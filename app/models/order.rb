class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :order_status
  before_create :set_order_status
  before_save :update_subtotal
  has_many :line_items
  has_many :products, through: :line_items

  def subtotal
    line_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price.to_f) : 0 }.sum
  end

  private
  
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
