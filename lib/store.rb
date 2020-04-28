class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_interger: true,
    greater_than_or_equal_to: 0,
  }
  validate :must_sell_something



  def must_sell_something
    if !self.mens_apparel && !self.womens_apparel
      errors.add(:mens_apparel, "must sell at least one type of apparel")
      # errors.add(:womens_apparel,"must sell at least one type of apparel")
    end
  end

end
