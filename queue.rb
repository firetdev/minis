class Queue
	def initialize
		@queue = []
	end
	def add user
		@queue.push user
	end
	def print
		puts @queue[0].id
		@queue.delete_at(0)
	end
end
class User
	attr_accessor :id
	def initialize
		@id = rand(999999999999)
	end
end

q = Queue.new

puts "How many ids?"
ids = gets.to_i

(1..ids).each do |i|
	i = User.new
	q.add i
end

(1..ids).each do |x|
	q.print
end