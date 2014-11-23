module Reusable
  extend ActiveSupport::Concern
   def self.search_q(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ? or marking = ? ", "%#{query}%" , query) 
   end

  
end


ActiveRecord::Base.send :include, Reusable
