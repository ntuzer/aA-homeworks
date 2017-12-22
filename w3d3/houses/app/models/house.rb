class House < ApplicationRecord

  has_many :residents,
    primary_key: :id
    foreign_key: :houses_id
    class_name: :Person
end
