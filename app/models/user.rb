class User < ApplicationRecord

  def create!
    self.status = "pending"
    self.save
  end

end
