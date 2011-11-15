# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@user1 = User.create(:username => 'jvn')
@user2 = User.create(:username => 'mkl')
@user3 = User.create(:username => 'nsl')

@event1 = Event.create(:Event_Name => 'jul', :user_id => @user1)
@event1 = Event.create(:Event_Name => 'paaske', :user_id => @user1)
@event1 = Event.create(:Event_Name => 'foedselsdag', :user_id => @user2)
@event1 = Event.create(:Event_Name => 'konfirmation', :user_id => @user3)
