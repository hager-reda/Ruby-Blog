class Post < ApplicationRecord

    has_many :comments
    paginates_per 2
end
