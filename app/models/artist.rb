class Artist < ActiveRecord::Base
    has_many :songs
    has_many :producers, through: :songs
end