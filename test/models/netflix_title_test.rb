# == Schema Information
#
# Table name: netflix_titles
#
#  id           :bigint           not null, primary key
#  country      :string
#  description  :string
#  genre        :string
#  id_csv       :string
#  published_at :string
#  title        :string
#  year         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class NetflixTitleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
