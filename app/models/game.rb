class Game < ApplicationRecord
  belongs_to :user
  
  validates :score, numericality: { greater_than_or_equal_to: 0 }
  
  before_create :set_defaults
  
  private
  
  def set_defaults
    self.score ||= 0
    self.completed ||= false
  end
end
