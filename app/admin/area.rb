# -*- coding: utf-8 -*-
ActiveAdmin.register Area do
  menu :parent => "Cвойства"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :text
  filter :name, label: "Название"
  filter :text, label: "Текст"


   
  index do 

  column "Haзвание", :name do |x| 
    link_to x.name, admin_area_path(x)
    end

  column "Текст", :text
  
  
 
  actions
  end
  

  ###### form 
  form do |f|
    f.inputs "Team" do
      f.input :name, label: "Имя"
      f.input :text, label: "Текст"

      
    end
    f.actions
  end

  

  
  show do |x|
    attributes_table do
      row "Название " do
	x.name 
	end	
      
      row "текст" do
	x.text 
	end
    end
  end
end
