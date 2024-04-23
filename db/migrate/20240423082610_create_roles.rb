class CreateRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description
      t.string :permissions

      t.timestamps
    end
  end
end
