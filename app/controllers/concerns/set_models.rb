module SetModels
  extend ActiveSupport::Concern
  private

  def set_need_attr
    @types = Type.all
    @country = Country.all
    @label = Label.all
    @paints = Paint.all
    #@collection= Collection.all.limit(10)
  end
end
    
  
