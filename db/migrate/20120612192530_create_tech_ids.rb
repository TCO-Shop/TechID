class CreateTechIds < ActiveRecord::Migration
  def change
    create_table :tech_ids do |t|
      t.string :name
      t.text :description
      t.string :pdf_file_name
      t.integer :tech_id
      t.string :LO
      t.string :college
      t.string :category
       t.timestamps
    end
  end
end
