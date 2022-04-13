class NameList < ApplicationRecord

belongs_to :user
belongs_to :present_list, optional: true

end
