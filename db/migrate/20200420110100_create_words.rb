class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :tense
      t.string :transliteration
      t.string :translation
      t.string :pronunciation
      t.text :sentence_example_one
      t.string :sentence_example_one_pronunciation
      t.string :image

      t.timestamps
    end
  end
end
