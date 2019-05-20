User.create!([
  {name: "Kaitlyn", email: "kaitlynbh@gmail.com", password_digest: "$2a$10$amKVAdvkyjRNvUODcXzJ0updUEZRAWdnvriS1psJAUMR3Xi6nSlrG"},
  {name: "Ashley", email: "ashley@gmail.com", password_digest: "$2a$10$DOu7gHfcU8be2cxiSp/5GeQqaVwRrIqyZisRu7gugIOC.ytSd7592"}
])

Contact.create!([
  {first_name: "Mia", last_name: "McConahey", email: "MiaMchey.com", phone_number: "312-434-5632", birthday: "5/16", middle_name: "Navi", bio: nil, user_id: 1},
  {first_name: "Ashley", last_name: "Ramsey", email: "Ashrams@gmail.com", phone_number: "312-434-5289", birthday: "11/16", middle_name: "Nicole", bio: nil, user_id: 1},
  {first_name: "Amber", last_name: "Hamilton", email: "amham@gmail.com", phone_number: "312-434-5678", birthday: "2/22", middle_name: "Rose", bio: nil, user_id: 1},
  {first_name: "Tracey", last_name: "Blanchard", email: "Tblanchard@gmail.com", phone_number: "848-516-3646", birthday: "5/22", middle_name: "Lynn", bio: nil, user_id: 2},
  {first_name: "Kyleigh", last_name: "Blanchard", email: "kyblanch@gmail.com", phone_number: "514-615-5463", birthday: "2/14", middle_name: "Ann", bio: nil, user_id: 1},
  {first_name: "Kaitlyn", last_name: "Higgins", email: "kaitlynh@gmail.com", phone_number: "847-962-1232", birthday: "1/30", middle_name: "Brooke", bio: nil, user_id: 2}
])

