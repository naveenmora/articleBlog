class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.attachment :image
      t.text :text
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
