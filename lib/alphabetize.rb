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

  counter=0
  divider=1
  word_weighting=0.00000
  word.length.times do
    word_weighting+=esp_hash["esperanto"][word[counter]]/divider
    divider=divider*10
    counter+=1
  end
  
end

def alphabetize(arr)
  # code here

my_esp = hash_my_esp("abcĉdefgĝhĥijĵklmnoprsŝtuŭvz")

my_array=arr.sort_by { |l| my_esp["esperanto"][l[0]] }

my_array 

end