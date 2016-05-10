# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Ankush Arora', email: 'aarora3@binghamton.edu', password: 'password', user_id: '1', admin: true)

houses = [{:title => '11 Catherine Street', :rating => 'Vestal', :release_date => '25-Mar-2016',:todate => '25-Mar-2016',:price => '325.00'},
    	  {:title => '44 Schiller', :rating => 'Binghamton', :release_date => '26-Mar-2016',:todate => '27-Mar-2016',:price => '320.00'},
    	  {:title => '207', :rating => 'Downtown', :release_date => '21-Mar-2016',:todate => '25-Mar-2016',:price =>'315.00'},
      	  {:title => '209', :rating => 'Endicott', :release_date => '10-Apr-2016',:todate => '13-Apr-2016',:price=>'185.00'},
      	  {:title => 'murray', :rating => 'Vestal', :release_date => '5-Apr-2016',:todate => '8-Apr-2016',:price =>'250.00'},
      	  {:title => 'oak', :rating => 'Downtown', :release_date => '15-Apr-2016',:todate => '18-Apr-2016',:price =>'275.00'},
  	 ]


houses.each do |house|
  House.create!(house)
end

