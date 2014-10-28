json.blog_posts @blog_posts do |blog_post|
  json.id    blog_post.id
  json.title blog_post.title
  json.body blog_post.body
  json.User blog_post.user
end