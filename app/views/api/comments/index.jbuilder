json.comments @comments do |comment|
  json.id    comment.id
  json.body comment.body
  json.User comment.user
  json.Blog_Post comment.blogPost	
end