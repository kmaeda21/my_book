json.array!(@books) do |book|
  json.extract! book, :id, :image, :name, :author, :price, :publisher, :date_of_publication, :ISBN_code, :availability
  json.url book_url(book, format: :json)
end
