# -*- coding: utf-8 -*-
ActiveAdmin.register Clue do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :asset, :vendor, 
                :clue_type_id, :country_id, :marking,
                :price, :weight, :consumption, :description




  filter :title, label: "Название"
  filter :marking, label: "Артикул"
  filter :price, label: "Цена"
  filter :weight, label: "Ширина"
  filter :clue_type_id, label: "Тип клея", :as => :select, :collection => proc { ClueType.all }



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

  column "Тип клея" , :clue_type do |x|
      x.clue_type.name
    end
  
   
  
  actions
  end



########## form 
   form(:html => { :multipart => true }) do |f|
    f.inputs "Team" do
      f.input :clue_type, :as => :select , :collection => ClueType.all, :label => "Тип клея"
      f.input :country, :as => :select, :collection => Country.all, :label => "Страна"
      f.input :vendor, :label => "Производитель"
      f.input :title, :label => "Название"
      f.input :asset, :label => "Картинка"
      f.input :marking, :label => "Артикул"
      f.input :price, :label => "Цена"
      f.input :consumption, :label => "Расход"
      f.input :weight, :label => "Вес"
      f.input :description, :label => "Описание"

    end
    f.actions
  end


########## show 

 show do |x|
    attributes_table do
      row "Название " do
	x.title
	end	
      
      row "страна" do
	x.country.name 
	end
      row "Производитель" do
	x.vendor 
	end
    
    row "Тип" do
	x.clue_type
	end
     
    row "Артикул" do
	x.marking  
      end

    row "Цена" do
	x.price  
      end

     row "Вес" do
	x.weight   
      end

      row "Расход" do
        x.consumption
      end

      row "Картинка" do
          image_tag(x.asset.url)
      
      end

      row "Описание" do
        x.description 
      end
      

     
    end 
  end




end
