class Person < ActiveRecord::Base
  validates :houses_id, presence: true, uniqueness: true

  belongs_to :house,
    primary_key: :id
    foreign_key: :houses_id
    class_name: :House

end
