library = [
  {
    "title" => "Hitchhiker's Guide", 
    "Author" => "Douglas Adams", 
    "categories" => [ "comedy", "fiction", "british"]
  },
  {
    "title" => "Pride and Prejudice", 
    "Author" => "Jane Austen", 
    "categories" => [ "morality", "fiction", "society", "british"]
  },
  {
    "title" => "Search Inside Yourself", 
    "Author" => "Chade-Meng Tan", 
    "categories" => [ "self improvement", "non-fiction", "mindfulness", "business"]
  },
  {
    "title" => "Benjamin Franklin: An American Life", 
    "Author" => "Walter Isaacson", 
    "categories" => [ "non-fiction", "history", "founding fathers"]
  },
  {
    "title" => "Glengarry Glen Ross", 
    "Author" => "David Mamet", 
    "categories" => [ "play", "fiction", "drama"]
  }
]

#Out put should be a category hash:
# {
#   "comedy" => ["Hitchhiker's Guide"], 
#   "fiction" => ["Hitchhiker's Guide", "Pride and Prejudice", "Glengarry Glen Ross"], 
#   "british" => ["Hitchhiker's Guide", "Pride and Prejudice"], 
#   "morality" => ["Pride and Prejudice"], 
#   "society" => ["Pride and Prejudice"], 
#   "self improvement" => ["Search Inside Yourself"], 
#   "non-fiction" => ["Search Inside Yourself", "Benjamin Franklin: An American Life"], 
#   "mindfulness" => ["Search Inside Yourself"], 
#   "business" => ["Search Inside Yourself"], 
#   "history" => ["Benjamin Franklin: An American Life"], 
#   "founding fathers" => ["Benjamin Franklin: An American Life"], 
#   "play" => ["Glengarry Glen Ross"], 
#   "drama" => ["Glengarry Glen Ross"]
# }

category_hash = {}
library.each do |book|
  book["categories"].each do |category|
    if category_hash.key?(category)
      book[category] << book["title"]
    else
      category_hash[category] << book ["title"]
    end
end




puts category_hash["non-fiction"]






