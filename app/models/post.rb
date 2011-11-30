class Post < ActiveRecord::Base
#  Posts put the "blog" in "podblog".
#
#  Posts have the following properties:
#    title - The title of the post.
#    body - The body text.
#
#  Plus, as always, the obligatory timestamps.

  belongs_to :user
  has_one :podcast
end
