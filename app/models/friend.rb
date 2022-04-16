class Friend < ApplicationRecord
  
  belongs_to :user
  
  # def self.looks(search, word)
  #   if search == "perfect_match"
  #     @friend = Friend.where("name LIKE?", "#{word}")
  #   elsif search == "forword_match"
  #     @friend = Friend.where("name LIKE?","#{word}%")
  #   elsif search == "backword_match"
  #     @friend = Friend.where("name LIKE?","%#{word}")
  #   elsif search == "partial_match"
  #     @friend = Friend.where("name LIKE?","%#{word}%")
  #   else
  #     @friend = Friend.all
  #   end
  # end
  
end
