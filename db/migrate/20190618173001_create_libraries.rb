class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :librarian
      t.string :library_name

      t.timestamps
    end
  end
end
