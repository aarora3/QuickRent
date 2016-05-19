class House < ActiveRecord::Base
    #validates :title, presence: true
    has_many :reviews
    has_many :users, :through => :reviews
    
    #before_save { self.email = email.downcase }
    #validates :name,  presence: true, length: { maximum: 50 }
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    #validates :email, presence: true, length: { maximum: 255 },
    #                format: { with: VALID_EMAIL_REGEX },
    #                uniqueness: { case_sensitive: false }
    #validates :description, presence: true, length: { minimum: 5 }
    
    
    def self.ratings 
        ['Vestal','Binghamton','Downtown','Endicott']
    end
end