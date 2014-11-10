# -*- coding: utf-8 -*-
ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :collection_id, :asset, :type,  :description, :price, :weight, :height, :marking
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end




index do 

  column "Haзвание", :title do |x| 
    link_to x.title, admin_product_path(x)
    end
  column "Картинка", :asset do |x|
      div :class => "thumb" do
        image_tag(x.asset.url)
      end
    end
  column "Aртикль", :marking do |x|
      x.marking
    end

  column "Цена", :price do |x|
      x.price
    end

  column "Тип", :type do |x|
      x.type.name
    end
  column "Последнее изменение", :updated_at
  actions
  end



###### form 
  form(:html => { :multipart => true }) do |f|
    f.inputs "Team" do
      f.input :collection, :as => :select , :collection => Collection.all, :label => "Коллекция"
      f.input :type, :as => :select, :collection => Type.all, :label => "Тип"
      f.input :title, :label => "Название"
      f.input :asset, :label => "Картинка"
      f.input :marking, :label => "Артикул"
      f.input :price, :label => "Цена"
      f.input :height, :label => "Длина"
      f.input :weight, :label => "Ширина"
    end
    f.actions
  end

######### show
  show do |x|
    attributes_table do
      row "Название обоев" do
	x.title
	end	
      
      row "страна" do
	x.collection.label.country.name 
	end

      

      row "лейбл" do
	x.collection.label.name 
	end

     row "коллекция" do
	link_to x.collection.name, admin_collection_path(x.collection)
	end

    row "тип" do
	x.type.name 
	end
     
    row "артикул" do
	x.marking  
      end

    row "цена" do
	x.price  
      end

     row "характеристики" do
	"#{x.weight} x #{x.height}"  
      end

      
      row "картинка" do
          image_tag(x.asset.url)
      
      end

      row "описание обоев" do
        x.description 
      end
      

     
    end 
  end


end
