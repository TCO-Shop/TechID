class CreateTeches < ActiveRecord::Migration
  def change
    create_table :teches do |t|
      t.string :name
      t.text :description
      t.string :pdf_file_name
      t.integer :tech_id
      t.String :LO

      t.timestamps
    end
  end
end
