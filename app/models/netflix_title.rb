# frozen_string_literal: true

# == Schema Information
#
# Table name: netflix_titles
#
#  id           :bigint           not null, primary key
#  country      :string
#  description  :string
#  genre        :string
#  published_at :string
#  title        :string
#  year         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class NetflixTitle < ApplicationRecord
end
