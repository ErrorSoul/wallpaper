# -*- coding: utf-8 -*-
ActiveAdmin.register Country do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :asset

  index do 

  column "Haзвание", :name do |x| 
    link_to x.name, admin_country_path(x)
    end
  column "Картинка", :asset do |x|
      div :class => "thumb" do
        image_tag(x.asset.url)
      end
    end
  
  column "Последнее изменение", :updated_at
  actions
  end


  form(:html => { :multipart => true }) do |f|
    f.inputs "Team" do
      f.input :name
      f.input :asset
      #f.input :name , :as => :select , :collection => Label.all
    end
    f.actions
  end
  
  show do |x|
    attributes_table do
      row "Cтрана" do
	x.name 
	end	
      
      row "Картинка" do
          image_tag(x.asset.url)
      
      end
      table_for x.labels do 
        column "Лейблы", :name  do |z|
          link_to z.name, admin_label_path(z)
        end
        column "Картинка", :asset do |z|
          div :class => "thumb" do
        image_tag(z.asset.url)
      end
    end
        
        # ...
      end

      row "Создать" do
        link_to 'Новый Лейбл', new_admin_label_path(:label => { :country_id => country.id })
      end
    end 
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
