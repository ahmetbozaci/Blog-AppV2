Comment.delete_all
Post.delete_all
User.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

first_user = User.create(name: 'Tom', 
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo', 
  bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', 
  photo: 'https://unsplash.com/photos/F_-0BxGuVvo', 
  bio: 'Teacher from Poland.')

  first_post = Post.create(author: first_user, title: 'Post 1', text: 'This is my first post')
  second_post = Post.create(author: second_user, title: 'Post 2', text: 'This is my second post')
  third_post = Post.create(author: first_user, title: 'Post 3', text: 'This is my third post')
  fourth_post = Post.create(author: second_user, title: 'Post 4', text: 'This is my fourth post')

  Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
  Comment.create(post: second_post, author: first_user, text: 'Hi Tom!' )
  Comment.create(post: second_post, author: second_user, text: 'Hi Tom!' )
  Comment.create(post: third_post, author: first_user, text: 'Hi Tom!' )
  Comment.create(post: third_post, author: second_user, text: 'Hi Tom!' )
  Comment.create(post: third_post, author: second_user, text: 'Hi Tom!' )
