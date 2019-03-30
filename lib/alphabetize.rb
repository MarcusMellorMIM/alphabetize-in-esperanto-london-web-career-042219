def hash_my_esp( esp_alphabet)

  return_hash = { 
    "esperanto" => {}
  }
  counter=0
   esp_alphabet.length.times do
    return_hash["esperanto"][esp_alphabet[counter]]=counter
    counter+=1
  end
  return_hash
end

def word_weight( word, esp_hash )

#not really happy with my solution - I need to understand floats better --- also, seems a really lonmg winded method to make this work ... but work, it does.
  counter=0
  divider=1000000000000000
  letter_total=0
  word_total=0.0
  word.length.times do
    letter_total = esp_hash["esperanto"][word[counter]]+1
    word_total = word_total + (letter_total*divider)
  
    divider=divider/30
    counter+=1
  end

  word_total

end

def alphabetize(arr)
  # code here

my_esp = hash_my_esp(" abcĉdefgĝhĥijĵklmnoprsŝtuŭvz")

#my_array=arr.sort_by { |l| my_esp["esperanto"][l[0]] }
my_array=arr.sort_by { |word| word_weight(word,my_esp) }

my_array 

end