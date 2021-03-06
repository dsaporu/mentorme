class User < ApplicationRecord
  # Direct associations

  has_many   :mentorship_pairings,
             :foreign_key => "mentor_id",
             :dependent => :destroy

  has_one    :mentorship_pairing,
             :foreign_key => "mentee_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :mentor,
             :through => :mentorship_pairing,
             :source => :mentor

  has_many   :mentees,
             :through => :mentorship_pairings,
             :source => :user

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
