class User < ActiveRecord::Base
  validate :atleast_one_is_checked
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name,
            presence: true,
            length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  validates :email,
            presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }


  validates :password,
            length: { minimum: 6 }


  validates :phone, :location,
            presence: true


  def atleast_one_is_checked
      errors.add(:base, "Select at least one checkbox") unless seller || buyer
  end



end
