class Sentence < ApplicationRecord

  #relations
  belongs_to :word


	#validations
	validates_presence_of :english_sentence,
												:transliteration_sentence,
												:translation_sentence
end
