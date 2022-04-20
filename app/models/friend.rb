class Friend < ApplicationRecord
  
  belongs_to :user
  
  validates :name,presence: true
  validates :birthdate,presence: true
  
  def self.search_for(content, method)
    if method == 'perfect_match'
      Friend.where(name: content)
    elsif method == 'forword_match'
      Friend.where('name LIKE?', content+'%')
    elsif method == 'backword_match'
      Friend.where('name LIKE?', '%'+content)
    elsif method == 'partial_match'
      Friend.where('name LIKE?', '%'+content+'%')
    else
      @friend = Friend.all
    end
  end
  
end
