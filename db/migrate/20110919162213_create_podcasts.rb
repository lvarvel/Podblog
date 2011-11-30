class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string "title"
      t.string "author"
      t.string "subtitle"
      t.text "summary"
      t.timestamp "pubdate"
      t.string "duration"
      t.timestamps
      t.string "keywords"
    end
  end
end
