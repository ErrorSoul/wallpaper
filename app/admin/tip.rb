# -*- coding: utf-8 -*-
ActiveAdmin.register Tip do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :text
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  filter :text, label: "Текст"

  index do
    column "Номер", :id do |x|
      link_to x.id, admin_tip_path(x)
    


     
    end
    column "Текст", :text do |x|
      x.text
    end
    actions
  end
  
form do |f|
    f.inputs "Team" do
      
      f.input :text, :label => "Текст"
    end
     f.actions
  end


  ########## show 

 show do |x|
    attributes_table do
      row "Номер " do
	x.id
      end	
      
      row "Создан" do
        x.created_at
      end


      row "Обновлен" do
        x.updated_at
      end
     
   

    

      row "Текст" do
        x.text
      end

    end
  end
end
