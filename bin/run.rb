require_relative '../config/environment'
#
# User.destroy_all
# UserInterest.destroy_all
# Event.destroy_all
# InterestEvent.destroy_all
# Rsvp.destroy_all

user1 = User.create(user_name: "user1", name: "Rob", location: "Washington D.C.")
user1.interests = [Interest.find_by(name: "Photography"), Interest.find_by(name: "Nature")]

event1 = Event.find_or_create_by(
  name: "Smash Party",
  description: "Smash Bros rules",
  location: "Washington D.C.",
  event_datetime: "2019-08-29 [08:30:00] "
)
event1.assign_interests(["Board Games", "Nature"])

event2 = Event.find_or_create_by(
  name: "Street Festival",
  location: "New York City"
)
event2.assign_interests(["Food", "Photography"])

event3 = Event.find_or_create_by(
    name: "Drink N Code",
    location: "Chicago"
)
event3.assign_interests(["Technology", "Drinks"])

event4 = Event.find_or_create_by(
    name: "Photos of Birds",
    location: "Washington D.C.")
event4.assign_interests(["Photography", "Nature"])


CommandLineInterface.runner