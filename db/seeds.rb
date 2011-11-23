# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: UTF-8
require 'forgery'

@user2 = User.create(:username => 'jvn')
@user1 = User.create(:username => 'mkl')
@user3 = User.create(:username => 'nsl')

@event1 = Event.create(:Event_Name => 'jul',
                       :date => '24/11/2011',
                       :user => @user1)
@event2 = Event.create(:Event_Name => 'paaske',
                       :date => '08/04/2012',
                       :user => @user1)
@event3 = Event.create(:Event_Name => 'foedselsdag',
                       :date => Forgery(:date).date,
                       :user => @user2)
@event4 = Event.create(:Event_Name => 'konfirmation',
                       :date => Forgery(:date).date,
                       :user => @user3)
@wish1 = Wish.create(:wish => 'ps3',
                     :talen => '1',
                     :event => @event1)
@wish2 = Wish.create(:wish => 'hatte',
                     :talen => '2',
                     :event => @event1)
@wish3 = Wish.create(:wish => 'penge',
                     :talen => '3',
                     :event => @event1)
@wish4 = Wish.create(:wish => 'mobil',
                     :talen => '4',
                     :event => @event1)

