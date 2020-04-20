class Word < ApplicationRecord
	validates_presence_of :english_word, presence true,
												:tense, presence true,
												:transliteration, presence true,
												:translation, presence true,
												:pronunciation, presence true
end