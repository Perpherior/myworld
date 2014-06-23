class CreateNovels < ActiveRecord::Migration
  def change
    create_table :novels do |t|
      t.string :title, null: false
      t.string :author
      t.date :publish_time
      t.integer :word_count

      t.timestamps
    end
  end
end
