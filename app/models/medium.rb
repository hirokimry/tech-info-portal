class Medium < ApplicationRecord
  has_many :articles, dependent: :destroy
end
