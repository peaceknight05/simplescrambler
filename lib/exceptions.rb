class TooSmall < StandardError
	def initialize(msg = "Number is too small!")
		super
	end
end

class MinMaxMismatch < StandardError
	def initialize(msg = "Max is smaller than Min!")
		super
	end
end

class NotNumber < StandardError
	def initialize(msg = "Input is not an integer!")
		super
	end
end

class NotString < StandardError
	def initialize(msg = "Input is not a string!")
		super
	end
end

class CannotScrambleStringLetter < StandardError
	def initialize(msg = "Input cannot have only one letter!")
		super
	end
end

class CannotScrambleStringSame < StandardError
	def initialize(msg = "Input must have at least two unique letters!")
		super
	end
end

class CannotScrambleNumberDigit < StandardError
	def initialize(msg = "Input cannot have only one digit!")
		super
	end
end

class CannotScrambleNumberSame < StandardError
	def initialize(msg = "Input must have at least two unique digits!")
		super
	end
end

class CannotScrambleArrayElement < StandardError
	def initialize(msg = "Input cannot have only one element!")
		super
	end
end

class CannotScrambleArraySame < StandardError
	def initialize(msg = "Input must have at least two unique elements!")
		super
	end
end