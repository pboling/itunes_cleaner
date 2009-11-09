# == Schema Information
#
# Table name: encodings
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Encoding < ActiveRecord::Base
  has_many :versions
end
