class Picture < ApplicationRecord

  validates :title, :artist, :url, presence: true;



end
