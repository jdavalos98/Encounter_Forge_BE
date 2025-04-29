class EncounterMonster < ApplicationRecord
  belongs_to :encounter
  belongs_to :monster
end
