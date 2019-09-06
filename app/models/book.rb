class Book < ActiveRecord::Base 
    has_many :libraries
    has_many :users, through: :libraries
    belongs_to :author 
    belongs_to :categories
end