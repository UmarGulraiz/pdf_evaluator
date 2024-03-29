class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :user_id
      t.float :score, default: 0.0, precision: 2
      t.timestamps
    end
  end
end
