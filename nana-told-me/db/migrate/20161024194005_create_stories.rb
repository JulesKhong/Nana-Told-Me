class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.column :title, :string
      t.column :details, :text
      t.column :location, :string
      t.column :date, :date
      t.attachment :image
      t.column :contributor, :string
      t.column :path, :string
    end
  end
end
