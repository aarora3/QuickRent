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

histories = [{:user_name => 'akki4141' , :user_id => '2', :email => 'adani1@binghamton.edu', :house_address => '11 Catherine Street', 
            :start_date => '10-Jan-2016', :end_date => '10-Apr-2016', :total_cost => '450', :rating => '5'},
            {:user_name => 'ankush12' , :user_id => '1', :email => 'aarora3@binghamton.edu', :house_address => '11 Catherine Street',
            :start_date => '10-Feb-2016', :end_date => '10-Apr-2016', :total_cost => '300', :rating => '5'},
            {:user_name => 'rasika11' , :user_id => '3', :email => 'rasika1@binghamton.edu', :house_address => '44 Schiller',
            :start_date => '15-Feb-2016', :end_date => '20-May-2016', :total_cost => '310', :rating => '4'},
            {:user_name => 'dobby08' , :user_id => '4', :email => 'dobby12@binghamton.edu', :house_address => '206 Main Street', 
            :start_date => '12-Aug-2015', :end_date => '20-Jan-2015', :total_cost => '800', :rating => '3'},
        ]

histories.each do |history|
    History.create!(history)
end