# -*- coding: utf-8 -*-
ActiveAdmin.register Paint do
  menu :parent => "Cвойства"


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name
  filter :name, label: "Название"
  

  index do 

  column "Hазвание", :name do |x|
      link_to x.name, admin_paint_path(x)
  end
  actions
  end
  


  ###### form 
  form do |f|
    f.inputs "Team" do
      f.input :name, label: "Имя"
     

      
    end
    f.actions
  end


   
  show do |x|
    attributes_table do
      row "Название " do
	x.name 
	end	
      
      
    end
  end

end
