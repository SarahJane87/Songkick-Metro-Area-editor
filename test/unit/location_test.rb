require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: locations
#
#  id         :integer         not null, primary key
#  metroid    :integer
#  name       :string(255)
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#  gmaps      :boolean
#  created_at :datetime
#  updated_at :datetime
#

