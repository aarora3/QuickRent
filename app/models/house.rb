class House < ActiveRecord::Base
    has_many :reviews
    has_many :users, :through => :reviews
    
    def self.ratings 
        ['Vestal','Binghamton','Downtown','Endicott']
    end
end