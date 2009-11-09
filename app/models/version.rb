# == Schema Information
#
# Table name: versions
#
#  id          :integer         not null, primary key
#  song_id     :integer
#  encoding_id :integer
#  bitrate_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Version < ActiveRecord::Base

  belongs_to :song
  belongs_to :encoding
  belongs_to :bitrate

end
