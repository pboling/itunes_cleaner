# == Schema Information
#
# Table name: library_songs
#
#  id         :integer         not null, primary key
#  song_id    :integer
#  library_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class LibrarySong < ActiveRecord::Base
  belongs_to :song
  belongs_to :library
end
