# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'test@test.com', username: 'test', password:'11111111')
User.create(email: 'whitney@whitney.com', username: 'whitney', password: '11111111')
User.create(email: 'kerri@kerri.com', username: 'kerri', password: '11111111')
User.create(email: 'bookis@bookis.com', username: 'bookis', password: '11111111')

Query.create(question: "Should we have a shorter break?", user_id: 2, yea: 0, nay: 0)
Query.create(question: "Is tie-dye a color?", user_id: 3, yea: 0, nay: 0)
Query.create(question: "Do you like using Twitter?", user_id: 4, yea: 0, nay: 0)
Query.create(question: "Can you see this question?", user_id: 1, yea: 0, nay: 0)
Query.create(question: "Can you vote on this question more than once?", user_id: 1, yea: 0, nay: 0)
Query.create(question: "Did you enjoy your break?", user_id: 3, yea: 0, nay: 0)
Query.create(question: "Did you take some time to relax over break?", user_id:4, yea: 0, nay: 0)
Query.create(question: "Did you get sick over break?", user_id: 2, yea: 0, nay: 0)
Query.create(question: "Do you feel more confident about rails than before the break?", user_id: 4, yea: 0, nay: 0)
Query.create(question: "Did you see any other Adies over the break?", user_id: 2, yea: 0, nay: 0)
Query.create(question: "Do you like this app?", user_id: 1, yea: 0, nay: 0)
Query.create(question: "Do you have pets?", user_id: 4, yea: 0, nay: 0)
Query.create(question: "Do you generally approve of a 'bring pets to class' day?", user_id: 3, yea: 0, nay: 0)
Query.create(question: "Do you approve of having cats in class?", user_id: 3, yea: 0, nay: 0)
Query.create(question: "Do you approve of having dogs in class?", user_id: 3, yea: 0, nay: 0)
Query.create(question: "Did you play any games over break", user_id: 2, yea: 0, nay: 0)

