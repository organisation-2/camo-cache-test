require 'octokit'

client = Octokit::Client.new :access_token => ENV['9d4edb0eed97da40d9eee373a799b6c708c3f7e8']

results = client.search_code('addClass user:mozilla')
total_count = results.total_count

last_response = client.last_response
number_of_pages = last_response.rels[:last].href.match(/page=(\d+).*s/)[1]

puts "There are #{total_count} results, on #{number_of_pages} pages!"
