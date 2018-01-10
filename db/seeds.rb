10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Whole bunch of stuff here to look like a blog post.",
    )
end

puts "10 blog posts created"