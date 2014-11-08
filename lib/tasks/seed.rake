# -*- coding: utf-8 -*-
namespace :db do
  desc "Fill database with type of wp"
  task populate: :environment do
    make_types
  end
end

def make_types
  types = %w(виниловые, флизелиновые, текстильные, стеклообои, бумажные)
  types << "под покраску"
  types.each do |t|
    Type.create!(name: t)
  end
end
