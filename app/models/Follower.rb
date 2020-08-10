class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize name, age, life_motto
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end    

    def self.all
        @@all
    end    

    def cults
        all_oaths = BloodOath.all.select do |oaths|
            oaths.follower == self
        end
        all_oaths.map do |bloodoath|
            bloodoath.cult
        end    
    end    
    
    def join_cult cult, initiation_date
        BloodOath.new self, cult, initiation_date
    end 
    
    def self.of_a_certain_age age
        self.all.select do |follower|
            follower.age >= age
        end
    end        

end
