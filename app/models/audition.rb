class Audition < ActiveRecord::Base
    belongs_to :role
    def role
      Role.find(role_id)
    end
    def call_back
      update(hired: true)
    end
  end