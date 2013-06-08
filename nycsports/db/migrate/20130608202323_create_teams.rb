class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :icon_url
      t.string :official_link
      t.string :twitter_link
      t.string :facebook_link

      t.timestamps
    end
  end
end
