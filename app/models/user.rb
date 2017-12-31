# frozen_string_literal: true

class User < ApplicationRecord
  def create!
    self.status = 'pending'
    save
  end
end
