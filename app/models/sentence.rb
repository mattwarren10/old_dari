class Sentence < ApplicationRecord
	validates_presence_of :english_sentence,
												:transliteration_sentence,
												:translation_sentence,
												:pronunication_sentence
end
