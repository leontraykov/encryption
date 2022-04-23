require 'digest'

puts "Введите слово или фразу для шифрования:"
secret = $stdin.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
way_to_keep = $stdin.gets.chomp

puts case way_to_keep 
when "1"
  "Вот что получилось:"
  Digest::MD5.hexdigest secret
when "2"
  "Вот что получилось:"
  Digest::SHA1.hexdigest secret
when "3"
  "Вот что получилось:"
  Digest::SHA2.hexdigest secret
else 
  "Нет такого способа"
end
