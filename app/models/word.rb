class Word < ApplicationRecord


	#relations
	has_many :sentences

	#validations
	validates_presence_of :english_word,
												:tense,
												:transliteration,
												:translation,
												:pronunciation

end