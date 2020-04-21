class CreateJoinTableWordSentence < ActiveRecord::Migration[6.0]
  def change
    create_join_table :words, :sentences do |t|
      # t.index [:word_id, :sentence_id]
      # t.index [:sentence_id, :word_id]
    end
  end
end
