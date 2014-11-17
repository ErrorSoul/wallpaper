# -*- coding: utf-8 -*-
namespace :db do
  desc "Fill database with type of wp"
  task populate: :environment do
    
    make_types
    make_paints
    fill_base
    make_admin 
    
  end
end

def hel 
  ActionController::Base.helpers
end

def make_admin
  AdminUser.create!(email: "admin@example.com",
                    password: "password")
end

def make_types
  types = %w(виниловые флизелиновые текстильные стеклообои бумажные)
  types << "под покраску"
  types.each do |t|
    Type.create!(name: t)
  end


  def make_countries
    %w(Россия Франция Италия Германия Бельгия)
  end

  def make_paints
   paints =  %w(ДЕТСКИЙ ГЕОМЕТРИЧЕСКИЙ 
               КЛАССИЧЕСКИЙ ОДНОТОННЫЙ   
              РАСТИТЕЛЬНЫЙ  ДРУГОЙ)
    paints.each do |x| 
      Paint.create!(name: x)
    end
  end

  def make_labels
    t = Array.new
    5.times do 
      t << Faker::Company.name
    end
    t
  end

  def make_collections
    t = Array.new
    5.times do 
      t << Faker::Company.name
    end
    t
  end

def make_wallpapers(x)
  t = Type.all.map(&:id)
  p = Paint.all.map(&:id)
  6.times do |w|
    x.products.create!(title: Faker::Address.state,
                       type_id: t.sample,
                       paint_id: p.sample,
                       description: Faker::Lorem.sentence(3),
                       height: 0.54,
                       weight: 1,
                       price: Faker::Commerce.price,
                       marking: Faker::Code.isbn,
                       asset: File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/w/#{w+1}.jpg")))
                             )
  end
end
  
  
def fill_base
  make_countries.map do |country|
    country_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/country/#{country}.jpg")))
    c = Country.create!(name: country, asset: country_img)
    puts "country", c.name
    make_labels.each_with_index do |label, ind| 
      label_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/label/#{ind + 1}.png")))
      l = c.labels.create!(name: label, asset: label_img)
      puts "labels", l.name
      make_collections.each_with_index  do |collection, index|
        collect_img = File.open(File.join("app", ActionController::Base.helpers.asset_path("assets/images/collects/#{index + 1 }.jpg")))
        e = l.collections.create!(name: collection, asset: collect_img)
        puts "collection" , e.name
        make_wallpapers(e)
        
      end
    end
  end
end
    
end
