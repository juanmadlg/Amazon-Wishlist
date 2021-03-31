# Amazon Wishlist

This is a basic first script, step two after "Hello World" to evaluate [Julia](https://julialang.org/).

The script helps you choose a gift from your Amazon wish list.

## Configuration

You only need to replace the AMAZON_BASE_URL and the WISHLIST_KEY with yours.

The WISHLIST_KEY is the string that you can find in the url when you are on your wishlist page. The wishlist must be public for it to work. 

Example:

https://www.amazon.es/hz/wishlist/ls/3UCT2RXSTH9QX/ref=nav_wishlist_lists_1?_encoding=UTF8&type=wishlist

AMAZON_BASE_URL = "https://www.amazon.es"

WISHLIST_KEY = "3UCT2RXSTH9QX"

## Modules

As you can see there are three required modules:

* HTTP: to get the Wishlist page from the Amazon URL.
* Gumbo: to parse the HTML code
* Cascadia: to query on it and get the desired data