class Word < ApplicationRecord
	validates_presence_of :tense, presence true,
												:transliteration, presence true,
												:translation, presence true,
												:pronunciation, presence true,
												:sentence_example_one, presence true,
												:sentence_example_one_pronunciation, presence true

end
