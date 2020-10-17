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
class MiningType < A