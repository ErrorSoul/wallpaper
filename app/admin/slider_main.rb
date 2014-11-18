# -*- coding: utf-8 -*-
ActiveAdmin.register SliderMain do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :text, :asset
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end



  ###### form 
  form(:html => { :multipart => true }) do |f|
     f.inputs do
      f.input :text, :label => "Текст"
      f.input :asset, :label => "Картинка"
     
    end
    f.actions
  end

end
