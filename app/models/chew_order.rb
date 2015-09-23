class ChewOrder < ActiveRecord::Base
    validate :select_grade

    validates :name, :phone, :antlertype, :address, :message,
              presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX }

    def select_grade
        errors.add(:base, "Please select at least one grade") unless gradea || gradeb || gradec
    end

end
