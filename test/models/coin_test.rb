# == Schema Information
#
# Table name: coins
#
#  id             :bigint           not null, primary key
#  acronym        :string
#  description    :string
#  url_image      :string
#  value          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  mining_type_id :bigint
#
# Indexes
#
#  index_coins_on_mining_type_id  (mining_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (mining_type_id => mining_types.id)
#
require 'test_helper'

class CoinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
