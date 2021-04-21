require 'yaml'
require_relative 'scraper'

# 1 Write a method which returns the top 5 rated movies urls
# 2 write a second method wich scrapes the movie details for each url
# 3 Put the movie details into a hash and put these hashes into an array
# 4 Store the movies array into a yaml file

# Créer un tableau qui va contenir les hash
movies_info = []
# Récupérer les 5 urls
urls = fetch_movies_url
# Boucler sur les urls pour récupérer les infos des films individuellement
urls.each do |url|
  movie_data = scrape_movie(url)
  movies_info << movie_data
  # OR movies_info << scrape_movie(url)
end

File.open('movies.yml', 'wb') do |file|
  yaml_data = movies_info.to_yaml
  file.write(yaml_data)
  # OR file.write(movies_info.to_yaml)
end
