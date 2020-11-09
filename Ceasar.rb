def caesar_cipher(str, shift)
    low_alpha = ("a".."z").to_a
    high_alpha = ("A".."Z").to_a   
    length_alpha = low_alpha.length

    chars = str.split("")
    ciphered = ""

    chars.each do |char|
        if low_alpha.include? char
            i = low_alpha.index(char)
            shifted = (i + shift) % length_alpha

            ciphered << low_alpha[shifted]
        elsif high_alpha.include? char
            i = high_alpha.index(char)
            shifted = (i + shift) % length_alpha

            ciphered << high_alpha[shifted]
        else
            ciphered << char
        end
    end

    ciphered
end

puts caesar_cipher("Hello world", 12)