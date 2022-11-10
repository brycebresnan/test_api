class Quote < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true


  def self.search(quote_author)
    # Quote.all.where("author = ?," "#{quote_author}")
    Quote.where("author = ?", ("#{quote_author}").downcase)
    #Quote.where("author") = quote_author)
    # Quote.all
  end


end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        