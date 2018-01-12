User.create!(
    email: "test2@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "User",
    roles: "Regular User"
)

puts "1 Regular User created"

User.create!(
    email: "test@test.com",
    password: "asdfasdf",
    password_confirmation: "asdfasdf",
    name: "testuser",
    roles: "site_admin"
)

puts "1 Admin User created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Praesent id metus massa, ut blandit odio. Proin quis tortor orci. Etiam at risus et justo dignissim congue. Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci. Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum. Nulla at nulla justo, eget luctus.",
    )
end

puts "10 blog posts created"