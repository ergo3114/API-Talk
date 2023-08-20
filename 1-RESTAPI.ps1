return 'This is a demo and should be run as such'

# URLs
$urlCatFacts = 'https://cat-fact.herokuapp.com/facts/'
$urlPokeMon = 'https://pokeapi.co/api/v2/ditto/'

# Call uri using the GET method to get data and put it into a variable
$objCatFacts = Invoke-RestMethod -Uri $urlCatFacts -Method 'GET'

# See what we have
$objCatFacts | Get-Member
$objCatFacts.text

# Call uri using the POST method to perform an action on an parameter
$objCatFacts = Invoke-RestMethod -Uri $urlPokeMon -Method 'GET'