class User < ActiveRecord::Base
    
    has_many :posts
    has_many :comments
    has_many :commented_posts, through: :comments, :class_name => "Post"
end