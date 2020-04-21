class RenameTenseAttributeToPartsOfSpeech < ActiveRecord::Migration[6.0]
  def change
  	rename_column :words, :tense, :part_of_speech
  end
end
