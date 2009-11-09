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

require 'spec_helper'

describe Song do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :album => "value for album",
      :artist => "value for artist",
      :length => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Song.create!(@valid_attributes)
  end
end
