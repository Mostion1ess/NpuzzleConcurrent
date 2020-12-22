# == Schema Information
#
# Table name: mining_types
#
#  id          :bigint           not null, primary key
#  acronym     :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class MiningTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
