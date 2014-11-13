module SetModels
  extend ActiveSupport::Concern
  private

  def set_need_attr
    @type = Type.all
    @country = Country.all
    @label = Label.all
    #@collection= Collection.all.limit(10)
  end
end
    
  
