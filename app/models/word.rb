class Word < ApplicationRecord


	#relations
	has_many :sentences

	#attaching files
	has_one_attached :image
	has_one_attached :pronunciation

	#validations
	validates_presence_of :english_word,
												:tense,
												:transliteration,
												:translation

end