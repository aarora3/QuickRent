# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    p page_name
    case page_name
    when /^new\s?page$/
  #    '/houses'
      new_house_path
    when /^the home\s?page$/
      '/houses'
    when /^the QucikRent welcome page$/
      users_path
    when /^the Login page$/
      login_path
    when /^the Admin page$/
      admin_path
    when /^the details page for "(.*)"$/
      '/houses/1'
    when /^the Edit House Listings page$/
      '/houses/1/edit'

    when /^the Sign Up page$/
      new_user_path
    when /^the House Listings page$/
      houses_path
    when /^the Post an Ad page$/
      new_house_path
    when /^the About Us page$/
      aboutus_path
    when /^the FAQ page$/
      faq_path
    when /^My Reviews page$/
      reviews_path
    when /^reviews_path\(house\)$/
      reviews_path(id)
    when /^the My Account page for "(.*)"$/
      user = User.find_by_name($1)
      '/users/2'
    
    when /^the New Reviews page$/
      '/reviews/new'
    when /^the Messages page$/
      messages_path
    when /^the New Message page$/
      '/messages'
    when /^the My Account page for "(.*)"$ $/
      user = User.find_by_name($1)
      '/users/editprofile'
    when /^the (edit|details) page for "(.*)"$/
      house = House.find_by_title($2)
      $1 == "details" ? house_path(house) : edit_house_path(house)
    when /^the Similar Houses page for "(.*)"$/
      house = House.find_by_title($1)
      same_director_path(house)
    
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
  
  #def login
  
    #fill_in('User name', with: user.name)
    #fill_in('Password', with: user.password)
    #click_button('Log in')
  #end
end

World(NavigationHelpers)