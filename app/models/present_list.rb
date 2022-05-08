class PresentList < ApplicationRecord

  belongs_to :user

  enum category: { give: 0, have: 1 }

  validates :date, presence: true
  validates :name, presence: true
  validates :item, presence: true
  validates :scene, presence: true



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
