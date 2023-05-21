class Question < ApplicationRecord
  has_many :answers

  def as_json(options = nil)
    super(:include => [:answers])
  end
end
