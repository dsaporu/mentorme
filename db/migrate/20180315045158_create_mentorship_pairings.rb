class CreateMentorshipPairings < ActiveRecord::Migration
  def change
    create_table :mentorship_pairings do |t|
      t.integer :mentor_id
      t.integer :mentee_id

      t.timestamps

    end
  end
end
