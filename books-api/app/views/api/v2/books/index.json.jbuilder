json.array! @books.each do |book|
	json.partial! 'book.json.jbuilder', book: book
end