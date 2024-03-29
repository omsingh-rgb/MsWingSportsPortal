# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u14f = Unit.create(name:"14F")
u16f = Unit.create(name:"16f")
u78 = Unit.create(name: "78")
u85 = Unit.create(name: "85")
u86 = Unit.create(name: "86")
u94 = Unit.create(name: "94")
u101 = Unit.create(name: "101")
u114 = Unit.create(name: "114")
u120 = Unit.create(name: "120")
u267 = Unit.create(name: "267")
u268 = Unit.create(name: "268")
u342 = Unit.create(name: "342")
u393 = Unit.create(name: "393")
u398 = Unit.create(name: "398")
u406 = Unit.create(name: "406")
u862 = Unit.create(name: "862")
u1083 = Unit.create(name: "1083")
u1159 = Unit.create(name: "1159")
u1374 = Unit.create(name: "1374")
u1381 = Unit.create(name: "1381")
u1454 = Unit.create(name: "1454")
u1846 = Unit.create(name: "1846")
u2236 = Unit.create(name: "2236")
u2473 = Unit.create(name: "2473")

relay = EType.create(name: "relay", per_cadet_limit:1)
any = EType.create(name: "any", per_cadet_limit:3)

User.create(username: "admin", password: "14F", password_confirmation: "14F", unit: u14f)

=begin
user14f = User.create(username: "user@14F", password: "14F", password_confirmation: "14F", unit: u14f)
user16f = User.create(username: "user@16F", password: "16F", password_confirmation: "16F", unit: u16f)
user78 = User.create(username: "user@78", password: "78", password_confirmation: "78", unit: u78)
user85 = User.create(username: "user@85", password: "85", password_confirmation: "85", unit: u85)
user86 = User.create(username: "user@86", password: "86", password_confirmation: "86", unit: u86)
user94 = User.create(username: "user@94", password: "94", password_confirmation: "94", unit: u94)
user101 = User.create(username: "user@101", password: "101", password_confirmation: "101", unit: u101)
user114 = User.create(username: "user@114", password: "114", password_confirmation: "114", unit: u114)
user120 = User.create(username: "user@120", password: "120", password_confirmation: "120", unit: u120)
user267 = User.create(username: "user@267", password: "267", password_confirmation: "267", unit: u267)
user268 = User.create(username: "user@268", password: "268", password_confirmation: "268", unit: u268)
user342 = User.create(username: "user@342", password: "342", password_confirmation: "342", unit: u342)
user393 = User.create(username: "user@393", password: "393", password_confirmation: "393", unit: u393)
user398 = User.create(username: "user@398", password: "398", password_confirmation: "398", unit: u398)
user406 = User.create(username: "user@406", password: "406", password_confirmation: "406", unit: u406)
user862 = User.create(username: "user@862", password: "862", password_confirmation: "862", unit: u862)
user1083 = User.create(username: "user@1083", password: "1083", password_confirmation: "1083", unit: u1083)
user1159 = User.create(username: "user@1159", password: "1159", password_confirmation: "1159", unit: u1159)
user1374 = User.create(username: "user@1374", password: "1374", password_confirmation: "1374", unit: u1374)
user1381 = User.create(username: "user@1381", password: "1381", password_confirmation: "1381", unit: u1381)
user1454 = User.create(username: "user@1454", password: "1454", password_confirmation: "1454", unit: u1454)
user1846 = User.create(username: "user@1846", password: "1846", password_confirmation: "1846", unit: u1846)
user2236 = User.create(username: "user@2236", password: "2236", password_confirmation: "2236", unit: u2236)
user2473 = User.create(username: "user@2473", password: "2473", password_confirmation: "2473", unit: u2473)
=end

# FEILD EVENTS

Event.create(name:"Under 15 Boys High Jump", max_entries:1, result_type:"Meters", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls High Jump", max_entries:1, result_type:"Meters", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men High Jump", max_entries:1, result_type:"Meters", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men High Jump", max_entries:1, result_type:"Meters", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women High Jump", max_entries:1, result_type:"Meters", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys Long Jump", max_entries:1, result_type:"Meters", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls Long Jump", max_entries:1, result_type:"Meters", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men Long Jump", max_entries:1, result_type:"Meters", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men Long Jump", max_entries:1, result_type:"Meters", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women Long Jump", max_entries:1, result_type:"Meters", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 BoysShot", max_entries:1, result_type:"Meters", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls Shot", max_entries:1, result_type:"Meters", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men shot", max_entries:1, result_type:"Meters", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men shot", max_entries:1, result_type:"Meters", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women shot", max_entries:1, result_type:"Meters", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys Discus", max_entries:1, result_type:"Meters", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls Discus", max_entries:1, result_type:"Meters", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men Discus", max_entries:1, result_type:"Meters", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men Discus", max_entries:1, result_type:"Meters", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women Discus", max_entries:1, result_type:"Meters", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys Javelin", max_entries:1, result_type:"Meters", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls Javelin", max_entries:1, result_type:"Meters", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men Javelin", max_entries:1, result_type:"Meters", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men Javelin", max_entries:1, result_type:"Meters", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women Javelin", max_entries:1, result_type:"Meters", max_age:20, gender:"female", e_type:any)

# any EVENTS

Event.create(name:"Under 15 Boys 100m", max_entries:1, result_type:"Seconds", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls 100m", max_entries:1, result_type:"Seconds", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men 100m", max_entries:1, result_type:"Seconds", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men 100m", max_entries:1, result_type:"Seconds", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women 100m", max_entries:1, result_type:"Seconds", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys 200m", max_entries:1, result_type:"Seconds", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls 200m", max_entries:1, result_type:"Seconds", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men 200m", max_entries:1, result_type:"Seconds", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men 200m", max_entries:1, result_type:"Seconds", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women 200m", max_entries:1, result_type:"Seconds", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys 300m/400m", max_entries:1, result_type:"Seconds", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls 300m/400m", max_entries:1, result_type:"Seconds", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men 300m/400m", max_entries:1, result_type:"Seconds", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men 300m/400m", max_entries:1, result_type:"Seconds", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women 300m/400m", max_entries:1, result_type:"Seconds", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys 800m", max_entries:1, result_type:"Seconds", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls 800m", max_entries:1, result_type:"Seconds", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men 800m", max_entries:1, result_type:"Seconds", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men 800m", max_entries:1, result_type:"Seconds", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women 800m", max_entries:1, result_type:"Seconds", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys 1500m", max_entries:1, result_type:"Seconds", max_age:15, gender:"male", e_type:any)
Event.create(name:"Under 15 Girls 1500m", max_entries:1, result_type:"Seconds", max_age:15, gender:"female", e_type:any)
Event.create(name:"Under 17 Men 1500m", max_entries:1, result_type:"Seconds", max_age:17, gender:"male", e_type:any)
Event.create(name:"Junior Men 1500m", max_entries:1, result_type:"Seconds", max_age:20, gender:"male", e_type:any)
Event.create(name:"Junior Women 1500m", max_entries:1, result_type:"Seconds", max_age:20, gender:"female", e_type:any)

Event.create(name:"Under 15 Boys Relay", max_entries:4, result_type:"Seconds", max_age:15, gender:"male", e_type:relay)
Event.create(name:"Under 15 Girls Relay", max_entries:4, result_type:"Seconds", max_age:15, gender:"female", e_type:relay)
Event.create(name:"Under 17 Men Relay", max_entries:4, result_type:"Seconds", max_age:17, gender:"male", e_type:relay)
Event.create(name:"Junior Men Relay", max_entries:4, result_type:"Seconds", max_age:20, gender:"male", e_type:relay)
Event.create(name:"Junior Women Relay", max_entries:4, result_type:"Seconds", max_age:20, gender:"female", e_type:relay)