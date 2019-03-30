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


def alphabetize(arr)
  # code here

my_esp = hash_my_esp("abcĉdefgĝhĥijĵklmnoprsŝtuŭvz")

my_array=arr.sort_by { |l| my_esp["esperanto"][l[0]] }

my_array 

end