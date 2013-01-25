def display_comments(link)
  comments_arr = link.comments
  comments_arr.each do |comment|
    puts comment.comment
    puts comment.user.username
    puts comment.created_at
  end
end

def create_user(name)
  User.set_user(name)
end

def set_link(link)
  Link.shorten(link)
end

def add_comment(link, user)
  Comment.make_comment(link, user)
end

def open_link(shortened_url)
  link = Link.where('shortened_url = url_short')
  link.comments.all.each { |c| puts c.comment; puts c.user.username }
  Launchy.open(link.url_long)
end

def user_input
  puts "Whatcha wanna do?"
  print "> "
  gets.chomp.split
end

def run
  input_arr = user_input
  case input_arr[0]
  when "user"
    create_user(input_arr[1..-1].join(" "))
  when "link"
    set_link(input_arr[1])
  end
end




run