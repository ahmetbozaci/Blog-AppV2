Comment.delete_all
Post.delete_all
User.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

first_user = User.create(name: 'Tom', 
  photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', 
  bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', 
  photo: 'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', 
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
