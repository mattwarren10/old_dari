class AddEnglishWordToWords < ActiveRecord::Migration[6.0]
  def change
    add_column :words, :english_word, :string
  end
end
