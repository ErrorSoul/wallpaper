# -*- coding: utf-8 -*-

ActiveAdmin.register Label do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :country_id, :asset
  
  filter :name, label: "Название"
  filter :country_id, :as => :check_boxes, :collection => proc { Country.all }
  index do 

  column "Haзвание", :name do |x| 
    link_to x.name, admin_label_path(x)
    end
  column "Картинка", :asset do |x|
      div :class => "thumb" do
        image_tag(x.asset.url)
      end
    end
  
  column "Последнее изменение", :updated_at
  actions
  end

  ###### form 
  form(:html => { :multipart => true }) do |f|
    f.inputs "Team" do
      f.input :country, :as => :select , :collection => Country.all
      f.input :name
      f.input :asset
      #f.input :name , :as => :select , :collection => Label.all
    end
    f.actions
  end
  

  ######### show
  show do |x|
    attributes_table do
      row "Название лейбла" do
	x.name 
	end	
      
      row "страна" do
	x.country.name 
	end
      row "Картинка" do
          image_tag(x.asset.url)
      
      end
      table_for x.collections  do 
        column "Коллекции", :name  do |z|
          link_to z.name, admin_collection_path(z)
        end
        column "Картинка", :asset do |z|
          div :class => "thumb" do
            image_tag(z.asset.url)
          end
        end
        
        # ...
      end

      row "Создать" do
        
        link_to 'Новая коллекция', new_admin_collection_path(:collection => { :label_id => x.id})
      end
     
    end 
  end


end
