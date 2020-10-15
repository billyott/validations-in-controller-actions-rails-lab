class Post < ActiveRecord::Base
    validates :title, presence: true
    # validates :category, :inclusion=> { :in => @allowed_cats }
    # validates :content, length: {minimum: 100}
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }


    # def allowed_cats
    #     @allowed_cats = ["Fiction","Non-Fiction"]
    # end
end
