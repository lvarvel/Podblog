class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :author
      t.string :subtitle
      t.text :summary
      t.timestamp :pubdate
      t.string :duration
      t.string :keywords

      #Paperclip fields for the "data" attachment
      t.string :data_file_name
      t.string :data_content_type
      t.integer :data_file_size
      t.datetime :data_updated_at

      t.timestamps
    end
  end
end
