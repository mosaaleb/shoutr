Shout.create!([
  {body: "Oh boy", user_id: 7},
  {body: "Yes, I am stubborn", user_id: 7},
  {body: "Eh, what's up, Doc?", user_id: 8},
  {body: "Gee, ain't I a stinker? ", user_id: 8},
  {body: "Hot Diggety Dog", user_id: 9},
  {body: "MEESKA MOUSKA!", user_id: 9}
])
User.create!([
  {email: "donald@duck.com", encrypted_password: "$2a$10$NOkcpcY/Gz91zp63mEWlOezbOUO7d63noDmRWLfGElRMSQmnjMuLu", confirmation_token: nil, remember_token: "f126dd2292e0622523e9537d27985abdfb96d5a1", username: "Donald Duck"},
  {email: "bugs@bunny.com", encrypted_password: "$2a$10$L4QOu4o7yIV.6QdWBB0sh.qhasRTDs7pD4acODHU5OdxLZtsNSRty", confirmation_token: nil, remember_token: "3039e133baa08792b74434c799cb28fcffb9a75c", username: "Bugs Bunny"},
  {email: "micky@mouse.com", encrypted_password: "$2a$10$alBT/JSdNqzmDATn8MOE9eEveQ06yezclVRjfUNkyhlGOMTTPFrBu", confirmation_token: nil, remember_token: "6be3e8e4bee7f81478fac1f9737cb4c2a6a85281", username: "Micky Mouse"}
])
