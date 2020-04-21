class AddWordRefToSentences < ActiveRecord::Migration[6.0]
  def change
    add_reference :sentences, :word, foreign_key: true
  end
end
