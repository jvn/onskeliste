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

@event1 = Event.create(:Event_Name => 'jul', :date => '24/11/2011', :user_id => @user1)
@event2 = Event.create(:Event_Name => 'paaske', :date => '08/04/2012', :user_id => @user1)
@event3 = Event.create(:Event_Name => 'foedselsdag', :date => '05/07/2012', :user_id => @user2)
@event4 = Event.create(:Event_Name => 'konfirmation', :date => '04/04/2012', :user_id => @user3)