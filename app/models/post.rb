class Post < ActiveRecord::Base
  belongs_to :user
  has_one :podcast
end
