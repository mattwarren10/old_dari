class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.text :english_sentence
      t.text :transliteration_sentence
      t.text :translation_sentence
      t.string :pronunciation_sentence

      t.timestamps
    end
  end
end
