class Contact < ApplicationRecord

  belongs_to :user

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  # validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  

  def friendly_updated_at
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

# def japanese_prefix
  
# end


end
