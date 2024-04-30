class CreateTeamRole < ActiveRecord::Migration[7.1]
  def change
    create_table :team_roles do |t|
      t.integer :team_id
      t.integer :role_id

      t.timestamps
    end
  end
end
