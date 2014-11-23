
module ActiveRecordExtension

  extend ActiveSupport::Concern
  def prod_path
    if self.class.name == "Product"
      path = Rails.application.routes.url_helpers.product_path(self)
    else
      path = Rails.application.routes.url_helpers.clue_path(self)
    end
    path
  end

  def my_type
    return ', "Clue"'  if self.class.name.eql? "Clue"
  end
  
  module ClassMethods
    def search_q(query)
      q = query.mb_chars.downcase.to_s
      # where(:title, query) -> This would return an exact match of the query
      where("lower(title) like ? or lower(marking) = ? ", "%#{q}%" , q) 
    end
  end
end

# include the extension 
ActiveRecord::Base.send(:include, ActiveRecordExtension)
