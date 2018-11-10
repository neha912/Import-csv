class User < ApplicationRecord
  require 'csv'
  file = File.expand_path('csv_file.csv', __FILE__)
  def self.import(file)
    CSV.foreach(file.path,headers:true) do |row|
      User.create! row.to_hash
    end
  end
end
