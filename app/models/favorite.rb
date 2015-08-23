class Favorite < ActiveRecord::Base
    belongs_to :micropost
    belongs_to :user
    
    attr_reader :micropost_id
    attr_reader :user_id
        
end
