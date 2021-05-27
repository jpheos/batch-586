class MoviesController < ApplicationController
  def index
    if params[:query].present?
      # sql = " \
      #   movies.title @@ :query \
      #   OR movies.synopsis @@ :query \
      #   OR directors.first_name @@ :query \
      #   OR directors.last_name @@ :query \
      # "
      # @movies = Movie.joins(:director).where(sql, query: "%#{params[:query]}%")

      # results = PgSearch.multisearch('superman')

      @results = PgSearch.multisearch('superman').map {|r| r.searchable}
    else
      @results = Movie.all
    end
  end
end
