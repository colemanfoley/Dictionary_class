class Dictionary
  attr_accessor :entries
  attr_accessor :keywords
  def initialize
  	@entries = Hash.new
  	@keywords = Array.new
	end
  
	def add(entry)
		@entries.merge!(entry)
		@keywords = entry.keys
	end

end

=begin
	
Use entry.keys to get key from entry.
Use entry.values to get value
	
=end