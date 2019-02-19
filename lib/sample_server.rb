require 'socket'

server = TCPServer.new(2345)

socket = server.accept
they_said = nil
while they_said != 'quit' do
socket.puts "What do you say? 'quit' to quit"

they_said = socket.gets.chomp
socket.puts "You said: #{they_said}. Goodbye!"
end

socket.close