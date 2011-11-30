class Podcast < ActiveRecord::Base
# Podcasts put the "pod" in "podblog".  These are the
# individual episodes of the podcast.
#
# They have the following attributes:
#   title - The title of this podcast.
#           Example: "Hello World!"
#   subtitle - The secondary title. 
#              Example: "Our first podcast"
#   author - The dude(s) that did the podcast. Example: "D & D"
#   summary - A text summary of the podcast.  
#             Example: "Blah blah blah. Wombats."
#   pubdate - A timestamp, marking when it was published.
#             Example: "Wed, 15 Jun 2005 19:00:00 GMT"
#   duration - A string, telling us how long it is (in HH:MM:SS format).  
#              Example: 35:42
#   keywords - Keywords, for searching.
#              Example: "wombats, fun, dishsoap"
#
# We also store the actual podcast file as a Paperclip
# attachment (using S3) called "data".  This means we 
# have the following paperclip fields:
#   data_file_name
#   data_content_type
#   data_file_size
#   data_updated_at
#
#   Plus, the obligatory timestamps.

  belongs_to :post

  has_attached_file( :data,
                     :storage => :s3,
                     :s3_credentials => 
                       "#{Rails.root}/config/s3.yml",
                     :path => ":class/:id/:filename",
                     :processors => [:despacer, 
                                     :timestamper] )
end
