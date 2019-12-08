class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :author
      t.string :country_of_origin
      t.string :bookcover_img
      t.string :original_language
      t.string :info_link
      t.string :title
      t.integer :year_published

      t.timestamps
    end
  end
end
