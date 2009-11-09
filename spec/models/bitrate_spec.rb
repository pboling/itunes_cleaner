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

require 'spec_helper'

describe Bitrate do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :code => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Bitrate.create!(@valid_attributes)
  end
end
