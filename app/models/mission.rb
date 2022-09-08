class Mission < ApplicationRecord
  belongs_to :planet
  belongs_to :scientist

#   Add validations to the Mission model:

# must have a name, a scientist and a planet
# # a scientist cannot join the same mission twice

  validates_presence_of :name
  validates :scientist, uniqueness: true

end
