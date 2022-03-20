class Employee < ApplicationRecord
    validates :name, :age, :gender, :designation, presence: true
    validates :age, numericality: {message: "should be a number"},
    :unless => Proc.new {|data| data.age.blank?}
end