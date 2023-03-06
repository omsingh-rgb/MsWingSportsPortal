# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u14f = Unit.create(name:"14F")
u1454 = Unit.create(name:"1454")
u1083 = Unit.create(name:"1083")
u1159 = Unit.create(name:"1159")

User.create(username: "Admin", password: "14F", password_confirmation: "14F", unit: u14f)

user14f = User.create(username: "user@14F", password: "14F", password_confirmation: "14F", unit: u14f)
user1454 = User.create(username: "user@1454", password: "1454", password_confirmation: "1454", unit: u1454)
user1083 = User.create(username: "user@1083", password: "1083", password_confirmation: "1083", unit: u1083)
user1159 = User.create(username: "user@1159", password: "1159", password_confirmation: "1159", unit: u1159)


cadet1_14f = Cadet.create(first_name: "Joe12-u14f", last_name: "Blogs12-u14f", date_of_birth: 12.years.ago, unit: u14f)
cadet2_14f = Cadet.create(first_name: "Joe13-u14f", last_name: "Blogs13-u14f", date_of_birth: 13.years.ago, unit: u14f)
cadet3_14f = Cadet.create(first_name: "Joe14-u14f", last_name: "Blogs14-u14f", date_of_birth: 14.years.ago, unit: u14f)
cadet4_14f = Cadet.create(first_name: "Joe15-u14f", last_name: "Blogs15-u14f", date_of_birth: 15.years.ago, unit: u14f)
cadet5_14f = Cadet.create(first_name: "Joe16-u14f", last_name: "Blogs16-u14f", date_of_birth: 16.years.ago, unit: u14f)
cadet6_14f = Cadet.create(first_name: "Joe17-u14f", last_name: "Blogs17-u14f", date_of_birth: 17.years.ago, unit: u14f)
cadet7_14f = Cadet.create(first_name: "Joe18-u14f", last_name: "Blogs18-u14f", date_of_birth: 18.years.ago, unit: u14f)
cadet8_14f = Cadet.create(first_name: "Joe19-u14f", last_name: "Blogs19-u14f", date_of_birth: 19.years.ago, unit: u14f)


cadet1_1454 = Cadet.create(first_name: "Joe12-u1454", last_name: "Blogs12-u1454", date_of_birth: 12.years.ago, unit: u1454)
cadet2_1454 = Cadet.create(first_name: "Joe13-u1454", last_name: "Blogs13-u1454", date_of_birth: 13.years.ago, unit: u1454)
cadet3_1454 = Cadet.create(first_name: "Joe14-u1454", last_name: "Blogs14-u1454", date_of_birth: 14.years.ago, unit: u1454)
cadet4_1454 = Cadet.create(first_name: "Joe15-u1454", last_name: "Blogs15-u1454", date_of_birth: 15.years.ago, unit: u1454)
cadet5_1454 = Cadet.create(first_name: "Joe16-u1454", last_name: "Blogs16-u1454", date_of_birth: 16.years.ago, unit: u1454)
cadet6_1454 = Cadet.create(first_name: "Joe17-u1454", last_name: "Blogs17-u1454", date_of_birth: 17.years.ago, unit: u1454)
cadet7_1454 = Cadet.create(first_name: "Joe18-u1454", last_name: "Blogs18-u1454", date_of_birth: 18.years.ago, unit: u1454)
cadet8_1454 = Cadet.create(first_name: "Joe19-u1454", last_name: "Blogs19-u1454", date_of_birth: 19.years.ago, unit: u1454)


cadet1_1083 = Cadet.create(first_name: "Joe12-u1083", last_name: "Blogs12-u1083", date_of_birth: 12.years.ago, unit: u1083)
cadet2_1083 = Cadet.create(first_name: "Joe13-u1083", last_name: "Blogs13-u1083", date_of_birth: 13.years.ago, unit: u1083)
cadet3_1083 = Cadet.create(first_name: "Joe14-u1083", last_name: "Blogs14-u1083", date_of_birth: 14.years.ago, unit: u1083)
cadet4_1083 = Cadet.create(first_name: "Joe15-u1083", last_name: "Blogs15-u1083", date_of_birth: 15.years.ago, unit: u1083)
cadet5_1083 = Cadet.create(first_name: "Joe16-u1083", last_name: "Blogs16-u1083", date_of_birth: 16.years.ago, unit: u1083)
cadet6_1083 = Cadet.create(first_name: "Joe17-u1083", last_name: "Blogs17-u1083", date_of_birth: 17.years.ago, unit: u1083)
cadet7_1083 = Cadet.create(first_name: "Joe18-u1083", last_name: "Blogs18-u1083", date_of_birth: 18.years.ago, unit: u1083)
cadet8_1083 = Cadet.create(first_name: "Joe19-u1083", last_name: "Blogs19-u1083", date_of_birth: 19.years.ago, unit: u1083)


cadet1_1159 = Cadet.create(first_name: "Joe12-u1159", last_name: "Blogs12-u1159", date_of_birth: 12.years.ago, unit: u1159)
cadet2_1159 = Cadet.create(first_name: "Joe13-u1159", last_name: "Blogs13-u1159", date_of_birth: 13.years.ago, unit: u1159)
cadet3_1159 = Cadet.create(first_name: "Joe14-u1159", last_name: "Blogs14-u1159", date_of_birth: 14.years.ago, unit: u1159)
cadet4_1159 = Cadet.create(first_name: "Joe15-u1159", last_name: "Blogs15-u1159", date_of_birth: 15.years.ago, unit: u1159)
cadet5_1159 = Cadet.create(first_name: "Joe16-u1159", last_name: "Blogs16-u1159", date_of_birth: 16.years.ago, unit: u1159)
cadet6_1159 = Cadet.create(first_name: "Joe17-u1159", last_name: "Blogs17-u1159", date_of_birth: 17.years.ago, unit: u1159)
cadet7_1159 = Cadet.create(first_name: "Joe18-u1159", last_name: "Blogs18-u1159", date_of_birth: 18.years.ago, unit: u1159)
cadet8_1159 = Cadet.create(first_name: "Joe19-u1159", last_name: "Blogs19-u1159", date_of_birth: 19.years.ago, unit: u1159)


event1 = Event.create(name: "Under 19 100m Sprint", max_entries:1, result_type:"Seconds", max_age:19)
event2 = Event.create(name: "Under 18 300m Sprint", max_entries:1, result_type:"Seconds", max_age:18)
event3 = Event.create(name: "Under 17 Discus", max_entries:1, result_type:"Meters", max_age:17)
event4 = Event.create(name: "Under 16 1200m Sprint", max_entries:1, result_type:"Seconds", max_age:16)
event5 = Event.create(name: "Under 15 Long-jump", max_entries:1, result_type:"Meters", max_age:15)
event6 = Event.create(name: "Under 14 High-jump", max_entries:1, result_type:"Meters", max_age:14)
event7 = Event.create(name: "Under 13 1500m Sprint", max_entries:1, result_type:"Seconds", max_age:13)
event8 = Event.create(name: "Under 13 100m Sprint", max_entries:1, result_type:"Seconds", max_age:13)
event9 = Event.create(name: "Under 14 300m Sprint", max_entries:1, result_type:"Meters", max_age:14)
event10 = Event.create(name: "Under 13 400m Sprint", max_entries:1, result_type:"Seconds", max_age:13)
event11 = Event.create(name: "Under 18 800m Sprint", max_entries:1, result_type:"Meters", max_age:18)
event12 = Event.create(name: "Under 16 100m Sprint", max_entries:1, result_type:"Seconds", max_age:16)
event13 = Event.create(name: "Under 15 300m Sprint", max_entries:1, result_type:"Seconds", max_age:15)
event14 = Event.create(name: "Under 14 High Jump", max_entries:1, result_type:"Meters", max_age:14)


Registration.create(cadet:cadet1_14f, event:event8)
Registration.create(cadet:cadet2_14f, event:event10)
Registration.create(cadet:cadet2_14f, event:event7)
Registration.create(cadet:cadet2_14f, event:event9)
Registration.create(cadet:cadet3_14f, event:event5)
Registration.create(cadet:cadet4_14f, event:event2)
Registration.create(cadet:cadet5_14f, event:event3)
Registration.create(cadet:cadet5_14f, event:event11)
Registration.create(cadet:cadet6_14f, event:event1)
Registration.create(cadet:cadet7_14f, event:event6)
Registration.create(cadet:cadet8_14f, event:event4)


Registration.create(cadet:cadet1_1454, event:event8)
Registration.create(cadet:cadet2_1454, event:event10)
Registration.create(cadet:cadet2_1454, event:event7)
Registration.create(cadet:cadet2_1454, event:event9)
Registration.create(cadet:cadet3_1454, event:event5)
Registration.create(cadet:cadet4_1454, event:event2)
Registration.create(cadet:cadet5_1454, event:event3)
Registration.create(cadet:cadet5_1454, event:event11)
Registration.create(cadet:cadet6_1454, event:event1)
Registration.create(cadet:cadet7_1454, event:event6)
Registration.create(cadet:cadet8_1454, event:event4)


Registration.create(cadet:cadet2_1159, event:event8)
Registration.create(cadet:cadet2_1159, event:event10)
Registration.create(cadet:cadet2_1159, event:event7)
Registration.create(cadet:cadet2_1159, event:event9)
Registration.create(cadet:cadet3_1159, event:event5)
Registration.create(cadet:cadet4_1159, event:event2)
Registration.create(cadet:cadet5_1159, event:event3)
Registration.create(cadet:cadet5_1159, event:event11)
Registration.create(cadet:cadet6_1159, event:event1)
Registration.create(cadet:cadet7_1159, event:event6)
Registration.create(cadet:cadet8_1159, event:event4)


Registration.create(cadet:cadet1_1083, event:event8)
Registration.create(cadet:cadet2_1083, event:event10)
Registration.create(cadet:cadet2_1083, event:event7)
Registration.create(cadet:cadet2_1083, event:event9)
Registration.create(cadet:cadet3_1083, event:event5)
Registration.create(cadet:cadet4_1083, event:event2)
Registration.create(cadet:cadet5_1083, event:event3)
Registration.create(cadet:cadet5_1083, event:event11)
Registration.create(cadet:cadet6_1083, event:event1)
Registration.create(cadet:cadet7_1083, event:event6)
Registration.create(cadet:cadet8_1083, event:event4)




