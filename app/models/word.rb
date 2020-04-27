class Word < ApplicationRecord

	#relations
	has_many :sentences, dependent: :destroy

	#attaching files
	has_one_attached :image
	has_one_attached :pronunciation

	#validations
	validates_presence_of :english_word,
												:part_of_speech,
												:transliteration,
												:translation											

end