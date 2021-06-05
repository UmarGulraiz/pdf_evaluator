# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
User.first_or_create(
  [
    { name: 'Umar'      , email: "umar@gmail.com"     , password: "123123" },
    { name: 'Bakhtawar' , email: "bakhtawar@gmail.com", password: "123123" },
    { name: 'Muzammil'  , email: "muzammil@gmail.com" , password: "123123" },
    { name: 'Arshiya'   , email: "arshiya@gmail.com"  , password: "123123" },
    { name: 'Mahnoor'   , email: "mahnoor@gmail.com"  , password: "123123" },
    { name: 'Fariha'    , email: "fariha@gmail.com"   , password: "123123" },
    { name: 'Usman'     , email: "usman@gmail.com"    , password: "123123" },
    { name: 'Ali'       , email: "ali@gmail.com"      , password: "123123" },
    { name: 'Ahmad'     , email: "ahmad@gmail.com"    , password: "123123" },
    { name: 'Hussain'   , email: "hussain@gmail.com"  , password: "123123" },
    { name: 'Haider'    , email: "haider@gmail.com"   , password: "123123" },
    { name: 'Jawwad'    , email: "jawwad@gmail.com"   , password: "123123" },
    { name: 'Ahsan'     , email: "ahsan@gmail.com"    , password: "123123" },
    { name: 'Nadeem'    , email: "nadeem@gmail.com"   , password: "123123" },
    { name: 'Saleem'    , email: "saleem@gmail.com"   , password: "123123" },
    { name: 'Fatima'    , email: "fatima@gmail.com"   , password: "123123" },
    { name: 'Ayesha'    , email: "ayesha@gmail.com"   , password: "123123" },
    { name: 'Tina'      , email: "tina@gmail.com"     , password: "123123" },
    { name: 'Hurriya'   , email: "hurriya@gmail.com"  , password: "123123" }
  ]
)

Admin.first_or_create(
  [
    { email: "umar.gulraiz1@gmail.com"     , password: "123123" }
  ]
)
