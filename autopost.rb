#HTML blog generation
#Jacob Piazza

`cat postHead.html > postspace.html`

newPost = true

while newPost do
  puts "Enter the title of your post:"
  postTitle = gets.chomp
  `echo "<p><h3>#{postTitle}</h3></p>" >> postspace.html` 

  puts "Enter the url for an image you'd like to feature:"
  postImage = gets.chomp
  `echo "<img src=#{postImage}>" >> postspace.html`

  puts "Enter the body of your post:"
  postBody = gets.chomp
  `echo "<p>#{postBody}</p>" >> postspace.html` 
  
  #Prompt to make another post
  puts "Would you like to make another post? (y or n)"
  answer = gets.chomp
  if answer.upcase.start_with?("N")
    newPost = false
  end
end

`cat postFoot.html >> postspace.html`

`git add . -A`
`git commit -m "Added a new post to Post Space"`
`git push`