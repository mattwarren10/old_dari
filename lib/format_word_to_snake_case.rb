module FormatWordToSnakeCase
	def self.add_underscore_to_blank_space(word)
      word.tr(" ", "_")
  end
  add_underscore_to_blank_space("to swim")
end

