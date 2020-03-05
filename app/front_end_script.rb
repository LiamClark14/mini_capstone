require "http"
require "tty-table"

puts "Welcome to my shop!"
response = HTTP.get("http://localhost:3000/api/all_products")
product_data = response.parse

pp product_data

table = TTY::Table.new header: ["Product Name", "Price", "Image URL", "Description"]

product_data.each do |product|
  table << ["#{product["name"]}", "#{product["price"]}", "#{product["image_url"]}", "#{product["description"]}"]
end
puts table.render(:ascii)
