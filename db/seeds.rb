puts "removing all bookmarks from db"
Bookmark.destroy_all
puts "removing all lists from db"
List.destroy_all
puts "removing all movies from db"
Movie.destroy_all
puts "resetting DB id sequences"
ActiveRecord::Base.connection.reset_pk_sequence!(Bookmark.table_name)
ActiveRecord::Base.connection.reset_pk_sequence!(List.table_name)
ActiveRecord::Base.connection.reset_pk_sequence!(Movie.table_name)

puts "seeding 4 movies..."
a = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
b = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
c = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
d = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "successfully!"

puts "seeding 2 lists..."
e = List.create(name: "Blockbusters")
f = List.create(name: "Women in leading roles")
puts "successfully!"

puts "seeding 4 bookmarks..."
g = Bookmark.create(comment: "a classic", movie: b, list: e)
h = Bookmark.create(comment: "doubtful if it counts", movie: c, list: f)
i = Bookmark.create(comment: "fav heist movie, huge rewatch value", movie: d, list: e)
j = Bookmark.create(comment: "best version of the story?", movie: a, list: f)
puts "successfully!"
