class CreateLinkctrs < ActiveRecord::Migration
  def change
    create_table :linkctrs do |t|
      t.string :name
      t.string :urlLink
      t.text :detail

      t.timestamps
    end
  end
end
