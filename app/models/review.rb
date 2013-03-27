class Review < ActiveRecord::Base
  attr_accessible :book_id, :content, :rating, :user_id

  belongs_to :user
  belongs_to :book

  def positive?
    if rating > 3
      true
    end
  end

end
