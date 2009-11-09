# == Schema Information
#
# Table name: libraries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  location   :string(255)
#  cleaned_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Library < ActiveRecord::Base
  has_many :library_songs
end
