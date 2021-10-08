class CreateEnologists < ActiveRecord::Migration[5.2]
  def change
    create_table :enologists do |t|
      t.string :name
      t.integer :age
      t.string :nationality

      t.timestamps
    end
  end
end
