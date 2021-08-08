class Patient < ApplicationRecord
  belongs_to :state

  validates_format_of :full_name, with: /[A-Za-z] [A-Za-z]\z/
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
