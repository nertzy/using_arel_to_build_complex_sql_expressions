class BlogPost < ActiveRecord::Base
  include PgSearch

  pg_search_scope :search_title_and_content,
    against: [:title, :content],
    using: :trigram,
    ranked_by: ":trigram"
end
