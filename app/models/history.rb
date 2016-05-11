class History < ActiveRecord::Base
    belongs_to :user


  def self.search(search)
    key = "#{search}"
    if search
      where('user_name = ?', key)
    else
      all
    end
  end

end