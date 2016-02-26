#HTML blog generation
#Jacob Piazza

newPost = true

while newPost do
  puts "Enter the title of your post:"
  postTitle = gets.chomp

  puts "Enter the url for an image you'd like to feature:"
  postImage = gets.chomp

  puts "Enter the body of your post:"
  postBody = gets.chomp
  
  blogFile = './postest.html'
  lineCount = `wc -l "#{blogFile}"`.strip.split(' ')[0].to_i
  
  puts blogFile
  puts lineCount
  
  
  #`git add . -A`
  #`git commit -m "Added a new post to Post Space"`
  #`git push`
  
  #Prompt to make another post
  puts "Would you like to make another post? (y or n)"
  answer = gets.chomp
  if answer.upcase.start_with?("N")
    newPost = false
  end
end