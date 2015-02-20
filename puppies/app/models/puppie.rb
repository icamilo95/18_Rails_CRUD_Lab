class Puppie < ActiveRecord::Base
validates :name, :age, :breed, presence:true
validates :age, numericality: true
validates :name, length: {minimum: 3} 
end
