# == Schema Information
#
# Table name: songs
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  album      :string(255)
#  artist     :string(255)
#  length     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
  has_many :library_songs
end
