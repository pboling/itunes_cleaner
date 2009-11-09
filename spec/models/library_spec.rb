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

require 'spec_helper'

describe Library do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :location => "value for location",
      :cleaned_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Library.create!(@valid_attributes)
  end
end
