class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true , length: { minimum: 6 }

    def activate
        update_columns(activated: true,activated_at: Time.zone.now)
    end
end
