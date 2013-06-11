# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :teams, :password, :email

  has_and_belongs_to_many :teams

  has_secure_password
end
