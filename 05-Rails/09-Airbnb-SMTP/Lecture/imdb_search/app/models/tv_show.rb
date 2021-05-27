class TvShow < ApplicationRecord
  include PgSearch::Model

  searchkick
  multisearchable against: [:title, :synopsis]
end
