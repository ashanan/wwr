class Post < ApplicationRecord
  def self.recent
    self.order('id desc').limit(5)
  end
end
