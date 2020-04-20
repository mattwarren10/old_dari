class Word < ApplicationRecord
	validates_presence_of :english_word,
												:tense,
												:transliteration,
												:translation,
												:pronunciation