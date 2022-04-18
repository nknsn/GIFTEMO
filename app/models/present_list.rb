class PresentList < ApplicationRecord

  belongs_to :user

  def self.search_for(content, method)
    if method == 'perfect_match'
      PresentList.where(scene: content)
    elsif method == 'forward_match'
      PresentList.where('scene LIKE?', content+'%')
    elsif method == 'backword_match'
      PresentList.where('scene LIKE?', '%'+content)
    elsif method == 'partial_match'
      PresentList.where('scene LIKE?', '%'+content+'%')
    else
      @present_list = PresentList.all
    end
  end
end
