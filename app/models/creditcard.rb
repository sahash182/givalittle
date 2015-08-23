class Creditcard < ActiveRecord::Base


  validates :number, length: { is: 16 }
  validates_numericality_of :number, :on => :create
  validates :cvc, length: { is: 4 }
  validates_numericality_of :cvc, :on => :create
  validates :xmonth, length: { is: 2 }
  validates_numericality_of :xmonth, :on => :create
  validates :xyear, length: { is: 4 }
  validates_numericality_of :xyear, :on => :create
end
