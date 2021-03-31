using HTTP, Gumbo, Cascadia

AMAZON_BASE_URL = "https://www.amazon.es"
WISHLIST_KEY = "3UCT2RXSTH9QX"
SUCCESS = 200

# Gets the Wishlist

amazon_wishlist = AMAZON_BASE_URL * "/hz/wishlist/printview/" * WISHLIST_KEY

request = HTTP.request("GET", amazon_wishlist)

if request.status != SUCCESS
    println("There was an error getting the Amazon Wish List")
    return
end

# Parses it and gets a list of Products

html = parsehtml(String(request.body))
data_rows = eachmatch(Selector("tr.g-print-view-row"), html.root)
num_rows = length(data_rows) 

# Shows a random selected product info

println("Your Amazon Wish List has $num_rows items")
random_row = rand(0:num_rows-1)
println("Random choice ($random_row)")

item_data = eachmatch(Selector("td"), data_rows[random_row])
println("> Title: " * nodeText(item_data[2]))
println("> Price: " * nodeText(item_data[4]))
println("Done!")