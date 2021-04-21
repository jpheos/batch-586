require 'open-uri'
require 'nokogiri'

IMDB_TOP_CHART_URL = "https://www.imdb.com/chart/top"

# Returns the top 5 movies urls of IMDB chart
def fetch_movies_url
  # Visiter le site imdb: https://www.imdb.com/chart/top
  raw_html = URI.open(IMDB_TOP_CHART_URL).read
  # Utiliser nokogiri pour parser le fichier html recu
  html_doc = Nokogiri::HTML(raw_html)
  urls = []

  # Rechercher avec nokogiri les urls des 5 premiers films
  html_doc.search('.titleColumn a').first(5).each do |link|
    # Stocker dans un tableau
    urls << "https://www.imdb.com#{link.attribute('href').value}"
  end

  urls
end

# Gathers info about one specific movie
# Returns a hash looking like that:
# {
#   cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
#   director: "Christopher Nolan",
#   storyline: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
#   title: "The Dark Knight",
#   year: 2008
# }
def scrape_movie(url)
  # Visite l'url
  raw_html = URI.open(url, "Accept-Language" => "en").read
  # Utiliser nokogiri pour parser le fichier html recu
  html_doc = Nokogiri::HTML(raw_html)

  match_data   = html_doc.search('h1').text.match(/(?<title>.*)[[:space:]]\((?<year>\d{4})\)/)
  summary_text = html_doc.search('.summary_text').text.strip
  director     = html_doc.search("h4:contains('Director:') + a").text
  cast         = []

  # Document entier
  # html_doc
  # Array de liens (balises <a>)
  # .search("h4:contains('Stars:') ~ a")
  # Array de liens
  # .first(3)
  # Un lien <a>
  # .each do |link|
  html_doc.search("h4:contains('Stars:') ~ a").first(3).each do |link|
    cast << link.text
  end

  {
    title:     match_data[:title],
    year:      match_data[:year].to_i,
    storyline: summary_text,
    director:  director,
    cast:      cast
  }
end

