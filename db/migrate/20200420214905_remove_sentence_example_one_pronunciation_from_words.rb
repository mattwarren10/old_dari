class RemoveSentenceExampleOnePronunciationFromWords < ActiveRecord::Migration[6.0]
  def change

    remove_column :words, :sentence_example_one_pronunciation, :string
  end
end
