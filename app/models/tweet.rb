class Tweet < ActiveRecord::Base
  validates :content, length: {maximum: 140, too_long: "140 characters is the maximum allowed"}

end
