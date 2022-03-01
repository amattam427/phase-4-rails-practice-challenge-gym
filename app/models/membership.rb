class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client 

    # validates_uniqueness_of :client_id, :scope => [:client_id, :gym_id]
    # validates :client_id, uniqueness: {scope: :gym_id,
    # message: "already has a membership"} 

    validates :client_id, uniqueness: {scope: :gym_id} 

end
