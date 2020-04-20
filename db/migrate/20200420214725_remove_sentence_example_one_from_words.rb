class RemoveSentenceExampleOneFromWords < ActiveRecord::Migration[6.0]
  def change

    remove_column :words, :sentence_example_one, :text
  end
end
