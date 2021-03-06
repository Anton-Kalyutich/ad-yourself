class Post < ActiveRecord::Base

    belongs_to :author, :class_name => "User"
    has_many :comments
    has_many :commentors, through: :comments, :class_name => "User"
end