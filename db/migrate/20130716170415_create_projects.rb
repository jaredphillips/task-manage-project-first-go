class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :objective
      t.boolean :completed

      t.timestamps
    end
  end
end
