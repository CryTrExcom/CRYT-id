# CRYT-id
Secure advanced Login/Signup System for any website powered by CRYT Blockchain https://cryt.crytrex.com

# Info and Explanation
Details and Some info will be available here: https://cryt.crytrex.com/cryt-id

# Generate Token
Generating a Token requires 2 fields in a normal web form that sends a POST to:

https://wallet.crytrex.com/nxt?requestType=generateToken 

or 

http://localhost:11112/nxt?requestType=generateToken 

if your run local Peer with API Functions active.


Required fields of the form:

'website:'

'secretPhrase:'


Blockchain response:

{
    "valid": true,
    "accountRS": "CRYT-47BP-Z7FV-4L6F-EHEH3",
    "requestProcessingTime": 50,
    "account": "13888415127028438325",
    "timestamp": 87456916,
    "token": "14ejqpunhbolk01rov8qqh936igbgede83q1699nuu85sm2r6pu984ra1cg9pg85klo0cev3amms3ef0r1pc84jlaa76fmfdptkmu8kuc9hg5qktbauf2urt7798dvi7ahnahnojki0c1rv9vskvk0gklltv63vq"
}

The website processes the response by associating the token with the user who sends the request.

The greater the associated parameters, the greater the security of the Token, we recommend associating with each user:

token

timestamp

account or RS account


(accountRS is useful if you want to generate a CRYT deposit address for each user for example, in this case the site manager will associate the passphrase with each user to allow transactions in the CRYT Blockchain).

# Login from Generated Token
Login Check Token associated with website users database, requires 2 fields in a normal web form that sends a GET to:

https://wallet.crytrex.com/nxt?requestType=decodeToken&website=https://cryt.crytrex.com&token=14ejqpunhbolk01rov8qqh936igbgede83q1699nuu85sm2r6pu984ra1cg9pg85klo0cev3amms3ef0r1pc84jlaa76fmfdptkmu8kuc9hg5qktbauf2urt7798dvi7ahnahnojki0c1rv9vskvk0gklltv63vq

or 

http://localhost:11112/nxt?requestType=decodeToken&website=https://cryt.crytrex.com&token=14ejqpunhbolk01rov8qqh936igbgede83q1699nuu85sm2r6pu984ra1cg9pg85klo0cev3amms3ef0r1pc84jlaa76fmfdptkmu8kuc9hg5qktbauf2urt7798dvi7ahnahnojki0c1rv9vskvk0gklltv63vq

if your run local Peer with API Functions active.


Required fields of the form:

'website:'

'token:'


Blockchain response:

{"valid":true,"accountRS":"CRYT-47BP-Z7FV-4L6F-EHEH3","requestProcessingTime":1,"account":"13888415127028438325","timestamp":87456916}

Now website check if any users is associated with timestamp | account or accountRS, also check if response is valid using valid response.

If an user is possible to process login.

# Some Basic Info
The required fields can be editable or not, this is a free choice of the website that integrates the system.

For the creation of the token, it is recommended to keep the website field hidden and set it with your domain name, while for the passphrase it is possible to have it entered by the user, or even this to be hidden but creating it randomly, with at least 70 characters.

For websites that want to use this procedure also as a CRYT wallet, it is recommended to generate the passphrase randomly, and associate it with the user and the "accountRS" wallet that is created, because the passphrase is the only way to carry out transactions from that portfolio .

For the login, keep the website field hidden and identical to the generation of the token, and give the possibility to insert the token to access the website.

# Development
Team working to add some examples in order to easy integrate this system on any website.
