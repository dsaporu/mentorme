class MentorshipPairing < ApplicationRecord
  # Direct associations

  belongs_to :mentor,
             :class_name => "User"

  belongs_to :user,
             :foreign_key => "mentee_id"

  # Indirect associations

  # Validations

end
