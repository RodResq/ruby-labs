# words = 'cal'..'car'
# puts words.min
# puts words.max
# words.reject {|subrange| puts subrange < 'cal'}
# words.each {|word| puts "Hello " + word}

while input = gets
    puts input + " triggered" if input =~ /start/ .. input =~ /end/
end