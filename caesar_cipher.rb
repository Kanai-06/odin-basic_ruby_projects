def caesar_cipher(string, shift = 0) 
  shifted_characters_array = string.split("").map do |char|
    if char.ord in 97..122
      (97 + ((char.ord % 97 + shift) % 26)).chr
    elsif char.ord in 65..90
      (65 + ((char.ord % 65 + shift) % 26)).chr
    else
      char
    end
  end

  shifted_characters_array.join("")
end

puts caesar_cipher("What a string!", 5)