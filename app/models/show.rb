class Show < ActiveRecord::Base 
    
    def self.highest_rating 
        #Should return the highest value in rating column.
        self.maximum(:rating)
    end

    def self.most_popular_show
        #Should return the show with the highest rating.
        #Use highest_rating method as helper.
        self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
        #Returns lowest value in ratings column
        self.minimum(:rating)
    end

    def self.least_popular_show
        #Returns show w lowest rating.
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
        #Returns sum of all ratings
        Show.sum(:rating)
    end

    def self.popular_shows
    #Returns array of all shows that have rating higher than 5
    self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        #Returns array of all shows sorted in alphabetical order according to name.
        self.order(:name)
    end
end
