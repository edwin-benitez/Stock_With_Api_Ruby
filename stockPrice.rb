require 'httparty'

text = File.open("apikey.txt", "r")
apiKey = text.readline()
url = 'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=GE&apikey=' + apiKey
response = HTTParty.get(url)
response.parsed_response
allDays = response['Time Series (Daily)']
oneDay = allDays['2019-01-09']
puts(oneDay['1. open'])
puts(oneDay['2. high'])
puts(oneDay['3. low'])
puts(oneDay['4. close'])
puts(oneDay['5. volume'])