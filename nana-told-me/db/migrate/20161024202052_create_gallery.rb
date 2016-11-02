class CreateGallery < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.attachment :image
      t.column :title, :string
    end
  end
end
