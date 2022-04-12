class PresentList < ApplicationRecord

has_many :name_lists, dependent: :destroy

end
