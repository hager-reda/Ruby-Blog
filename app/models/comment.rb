class Comment < ApplicationRecord
    belongs_to :post
    paginates_per 2

end
