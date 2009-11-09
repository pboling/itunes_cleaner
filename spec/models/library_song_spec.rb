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

require 'spec_helper'

describe LibrarySong do
  before(:each) do
    @valid_attributes = {
      :song_id => 1,
      :library_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    LibrarySong.create!(@valid_attributes)
  end
end
