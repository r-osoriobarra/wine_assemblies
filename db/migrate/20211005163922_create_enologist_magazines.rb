class CreateEnologistMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :enologist_magazines do |t|
      t.boolean :editor, default: false
      t.boolean :writer, default: false
      t.boolean :reviewer, default: false
      
      t.references :enologist, foreign_key: true
      t.references :magazine, foreign_key: true

      t.timestamps
    end
  end
end
