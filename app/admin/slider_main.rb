# -*- coding: utf-8 -*-
ActiveAdmin.register SliderMain do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :text, :asset
  filter :text, label: "Название"
  filter :asset, label: "Картинка"
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end



  ###### form 


   index do 

  column "Текст", :text do |x| 
    link_to x.text, admin_slider_main_path(x)
    end
  column "Картинка", :asset do |x|
      div :class => "thumb" do
        image_tag(x.asset.url)
      end
    end
  
  
  actions
  end
  form(:html => { :multipart => true }) do |f|
     f.inputs do
      f.input :text, :label => "Текст"
      f.input :asset, :label => "Картинка"
     
    end
    f.actions
  end



  show do |x|
    attributes_table do
      row "Название " do
	x.text 
	end	
      
      row "Картинка" do
	image_tag(x.asset.url )
	end
      
    end
  end

end
