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

class String
	def scramble(min = 10, max = 100)
		if max.class != Integer || min.class != Integer
			raise NotNumber
		elsif self.length == 1
			raise CannotScrambleStringLetter
		elsif self.chars.count(self.chars[0]) == self.length
			raise CannotScrambleStringSame
		elsif min > 0 && max >= min
			temp = self.chars
			(min + rand(max - min + 1)).times do
				random = rand(temp.length)
				random2 = rand(temp.length)
				if random2 == random
					until random2 != random
						random2 = rand(temp.length)
					end
				end
				onepos = random
				random = temp[random]
				twopos = random2
				random2 = temp[random2]
				temp[onepos] = random2
				temp[twopos] = random
			end
			return temp.join
		elsif min <= 0
			raise TooSmall
		elsif max < min
			raise MinMaxMismatch
		end
	end

	def isanagram?(base)
		if base.class != String
			raise NotString
		else
			one = self.chars
			two = base.chars
			if one.sort == two.sort
				return true
			else
				return false
			end
		end
	end
end

class Integer
	def scramble(min = 10, max = 100)
		if self.to_s.length == 1
			raise CannotScrambleNumberDigit
		elsif self.to_s.chars.count(self.to_s.chars[0]) == self.to_s.length
			raise CannotScrambleNumberSame
		else
			return self.to_s.scramble(min, max).to_i
		end
	end
end

class Array
	def scramble(min = 10, max = 100)
		if max.class != Integer || min.class != Integer
			raise NotNumber
		elsif self.length == 1
			raise CannotScrambleArrayElement
		elsif self.count(self[0]) == self.length
			raise CannotScrambleArraySame
		elsif min > 0 && max >= min
			temp = self
			(min + rand(max - min + 1)).times do
				random = rand(temp.length)
				random2 = rand(temp.length)
				if random2 == random
					until random2 != random
						random2 = rand(temp.length)
					end
				end
				onepos = random
				random = temp[random]
				twopos = random2
				random2 = temp[random2]
				temp[onepos] = random2
				temp[twopos] = random
			end
			return temp
		elsif min <= 0
			raise TooSmall
		elsif max < min
			raise MinMaxMismatch
		end
	end
end