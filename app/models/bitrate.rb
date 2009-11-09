# == Schema Information
#
# Table name: bitrates
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  code       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Bitrate < ActiveRecord::Base
  has_many :versions
end
