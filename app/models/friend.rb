class Friend < ApplicationRecord

  has_one_attached :image

  belongs_to :user

  validates :name, presence: true
  validates :birthdate, presence: true
  

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

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no.image.jpeg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

end
