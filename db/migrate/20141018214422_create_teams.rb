class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :members
      t.string :leader
      t.string :contact_email

      t.timestamps
    end
  end
end
