# Simple implementatiom of a Caesar cipher in Ruby

def caesar_cipher(str, num) # str string to convert, num is shift (left if num > 0)
  str.length.times do |i|
    if 96 < str[i].ord && str[i].ord < 123 # if str[i] lowercase
      str[i]= (((str[i].ord + num - 96) % 26) + 96).chr
    elsif 64 < str[i].ord && str[i].ord < 91 # if str[i] uppercase
      str[i]= (((str[i].ord + num - 64) % 26) + 64).chr
    end
  end 
  return str
end

puts caesar_cipher("What a string!", 5)
