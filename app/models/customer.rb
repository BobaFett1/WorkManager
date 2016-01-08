class Customer < ActiveRecord::Base
  has_many :projects

  def DisplayName
    self.Name1 << " " << self.Name2
  end
end
