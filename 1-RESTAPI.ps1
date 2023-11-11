return 'This is a demo and should be run as such'

# URLs
$urlCatFacts = 'https://cat-fact.herokuapp.com/facts/'
$urlPokeMon = 'https://pokeapi.co/api/v2/pokemon/6/'

# Call uri using the GET method to get data and put it into a variable
$objCatFacts = Invoke-RestMethod -Uri $urlCatFacts -Method 'GET'

# See what we have
$objCatFacts | Get-Member
$objCatFacts.Count
$objCatFacts.text

# Another call uri using the GET method to perform an action on an parameter
$objPokemonFacts = Invoke-RestMethod -Uri $urlPokeMon -Method 'GET'

# https://sqa.stackexchange.com/questions/47097/free-sites-for-testing-post-rest-api-calls
# Call uri using the POST method to perform an action on an parameter
Invoke-RestMethod https://httpbin.org/post -Method Post -Body "Testing"