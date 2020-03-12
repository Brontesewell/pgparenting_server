# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User attributes= :id, :first_name, :last_name, :email

# children  attributes = :id, :name, :gender, :birthday, :user_id

# subcat attributes= :id, :title, :catagory_id

# courses attributes =  :id, :title, :content, :quote, :course_image, :catagory_id, 
# :sub_catagory_id

# categories attributes = :id, :image, :catagory_name, :catagory_title, 
# :description




user1 = User.create( first_name: 'Lucy', last_name: 'Lusdfcy', email: 'bd1asd@gmail.com', password: 'password', )
user2 = User.create(first_name: 'Bob', last_name: 'brown', email: 'hjj1ha@gmail.com', password: 'password')

sub_catagory1 = SubCatagory.create( title: "behaviour")
sub_catagory2 = SubCatagory.create( title: "sport")
catagory1 = Catagory.create( catagory_name: "toddler", catagory_title: "0-2years old", image: "www.google.sdfksjldf" )
catagory2 = Catagory.create( catagory_name: "infant", catagory_title: "2-4years old", image: "www.345fdssdfgoogle.sdfksjldf" )


course1 = Course.create( title: 'sleep', content: "Join Discussions asfsfsdf sdfsdf sdfnd Daily Questions in", quote: "werewr243324 234wer wer wer wer wer", sub_catagory_id: sub_catagory1.id, catagory_id: catagory1)
course2 = Course.create( title: 'toddlersswimming', content: "Join Discussions and Daily Questions in", quote: "werwer wer wer wer wer", sub_catagory_id: sub_catagory1.id, catagory_id: catagory1)
course3 = Course.create( title: 'run', content: "sfdfsdfsf sdf sdf sdf sdf in", quote: "wesdfsdf sfrwer wer wer wer wer", sub_catagory_id: sub_catagory2.id, catagory_id: catagory2)

collection1 = Collection.create(user_id: user1.id, course_id: course1.id)
collection1 = Collection.create(user_id: user2.id, course_id: course2.id)
collection1 = Collection.create(user_id: user1.id, course_id: course2.id)

child1 = Kid.create(name: "dfsf", gender: "male", user_id: user2.id)
child2 = Kid.create(name: "dfssdfsfsdffsf", gender: "female", user_id: user1.id)
child3 = Kid.create(name: "dfssdfsdsdfsfsdffsf", gender: "femddale", user_id: user1.id)
