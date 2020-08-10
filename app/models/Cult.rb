class Cult
    attr_reader :name, :location, :founding_year, :slogan
    
    @@all = []

    def initialize name, location, founding_year, slogan
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end        

    def self.find_by_name name
        self.all.find do |cult|
            cult.name == name
        end
    end

    def self.find_by_location location
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year year
        self.all.select do |cult|
            cult.founding_year == year
        end
    end        

    def recruit_follower follower, initiation_date
        BloodOath.new follower, self, initiation_date
    end      
    
    def cult_population 
        followers.count    
    end  
    
    def followers
        all_oaths = BloodOath.all.select do |each_oath|
            each_oath.cult == self
        end
        all_oaths.map do |oath|
            oath.follower
        end    
    end        

    def average_age
        followers.reduce(0) do |sum, follower|
            sum + follower.age
        end  / cult_population 
    end    
        
    def my_followers_mottos
        followers.each do |follower|
            puts follower.life_motto
        end   
    end     
end        