class History < ActiveRecord::Base
    belongs_to :user


  def self.search(search)
    key = "%#{search}%"
    if search
      where('name LIKE ?', key)
    else
      all
    end
  end
  
  def create
    if(('#text_field').val() ==  "")
      redirect_to history_path
    end
  end 
  
  def new  
    @history =  History.find(params[:name])  
  end  
  
end