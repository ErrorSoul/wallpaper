# -*- coding: utf-8 -*-
ActiveAdmin.register Collection do

  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :label_id, :asset
  

  filter :name, label: "Название"
  filter :label_id, label: "Бренд", :as => :select, :collection => proc { Collection.all }
  filter :products, label: "Обои"
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

index do 

  column "Haзвание", :name do |x| 
    link_to x.name, admin_collection_path(x)
    end
  column "Картинка", :asset do |x|
      div :class => "thumb" do
        image_tag(x.asset.url)
      end
    end
  
  column "Бренд", :label
  actions
  end

###### form 
  form(:html => { :multipart => true }) do |f|
    f.inputs "Team" do
      f.input :label, label: "Бренд", :as => :select , :collection => Label.all
      f.input :name, label: "Название"
      f.input :asset, label: "Картинка"
      
    end
    f.actions
  end



######### show
  show do |x|
    attributes_table do
      row "Название коллекции" do
	x.name 
	end	
      
      row "страна" do
	x.label.country.name 
	end

      row "бренд" do
	link_to x.label.name, admin_label_path(x.label)
	end

      
      row "Картинка" do
        
          image_tag(x.asset.url)
      
      end
      table_for x.products  do 
        column "Обои", :name  do |z|
          link_to z.title, admin_product_path(z)
        end
        column "Картинка", :asset do |z|
          div :class => "thumb" do
            image_tag(z.asset.url)
          end
        
        end
        
        column "Артикль", :marking do |z|
            z.marking 
          
          end
        # ...
      end

      row "Создать" do
        link_to 'Новые Обои', new_admin_product_path(:product => { :collection_id => collection.id})
      end
    end 
  end






end
