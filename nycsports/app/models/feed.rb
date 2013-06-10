# == Schema Information
#
# Table name: feeds
#
#  id         :integer          not null, primary key
#  feed_url   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#

class Feed < ActiveRecord::Base
  attr_accessible :feed_url, :name, :team_id

  belongs_to :team
end
