class PresentList < ApplicationRecord

  belongs_to :user

  # def self.looks(search, word)
  #   if search == "perfect_match"
  #     @present_list = PresentList.where("scene LIKE?","#{word}")
  #   elsif search == "forward_match"
  #     @present_list = PresentList.where("scene LIKE?","#{word}%")
  #   elsif search == "backword_match"
  #     @present_list = PresentList.where("scene LIKE?","%#{word}")
  #   elsif search == "partial_match"
  #     @present_list = PresentList.where("scene LIKE?","%#{word}%")
  #   else
  #     @present_list = PresentList.all
  #   end
  # end
end
