class Dictionary
  attr_accessor :entries
  attr_accessor :keywords
  def initialize
  	@entries = Hash.new
  	@keywords = Array.new
	end
  
	def add(entry)
		if entry.is_a? Hash
			@entries.merge!(entry)
		elsif entry.is_a? String
			temporary_hash = {entry => nil}
			entry = temporary_hash
			@entries.merge!(entry)
		end

		@keywords = entry.keys
	end

end

=begin
	
Use entry.keys to get key from entry.
Use entry.values to get value
	
=end