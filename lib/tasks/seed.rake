# -*- coding: utf-8 -*-
namespace :db do
  desc "Fill database with type of wp"
  task populate: :environment do
    make_types
    fill_base
    
  end
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

  def make_labels
    t = Array.new
    5.times do 
      t << Faker::Company.name
    end
    t
  end

  def make_collections
    t = Array.new
    6.times do 
      t << Faker::Company.name
    end
    t
  end

def make_wallpapers(x)
  t = Type.all.map(&:id)
  6.times do |w|
    x.products.create!(title: Faker::Address.state,
                       type_id: t.sample,
                       description: Faker::Lorem.sentence(3),
                       height: 0.54,
                       weight: 1,
                       price: Faker::Commerce.price,
                       marking: Faker::Code.isbn,
                       asset: File.open( "app/assets/images/w/#{w+1}.jpg")
                             )
  end
end
  
  
def fill_base
  make_countries.map do |country|
    country_img = File.open( "app/assets/images/country/#{country}.jpg")
    c = Country.create!(name: country, asset: country_img)
    puts "country", c.name
    make_labels.each do |label|
      l = c.labels.create!(name: label)
      puts "labels", l.name
      make_collections.each do |collection| 
        e = l.collections.create!(name: collection)
        puts "collection" , e.name
        make_wallpapers(e)
        
      end
    end
  end
end
    
end
