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

require 'spec_helper'

describe Version do
  before(:each) do
    @valid_attributes = {
      :song_id => 1,
      :encoding_id => 1,
      :bitrate_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Version.create!(@valid_attributes)
  end
end
