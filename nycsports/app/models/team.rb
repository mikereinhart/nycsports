# == Schema Information
#
# Table name: teams
#
#  id            :integer          not null, primary key
#  icon_url      :string(255)
#  official_link :string(255)
#  twitter_link  :string(255)
#  facebook_link :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :string(255)
#

class Team < ActiveRecord::Base
  attr_accessible :facebook_link, :icon_url, :name, :official_link, :twitter_link
end
