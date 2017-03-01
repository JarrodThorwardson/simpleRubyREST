require "rest-client"

token = File.read("credentials.txt")
tokenRef = "Bearer " + token
url = File.read("host.txt")
testPost = "Verification that file loading and reading is functional."
payload = {'message_format' => 'text', 'message' => testPost }
headers = {Authorization: tokenRef}

RestClient.post( url, payload, headers)