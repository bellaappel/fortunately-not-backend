class Eightball < ApplicationRecord
    serialize :pos, Array
    serialize :neg, Array
    serialize :vague, Array
    belongs_to :creator
end
