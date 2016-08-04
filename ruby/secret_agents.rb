#Encrypt
#define method with single parameter
  #define index as 0
  #create while loop to go thru the entire string's indexes
  #run the .next method on each index
  #increment index by 1 

def encrypt (string)
  index = 0
  while index < string.length
    if string[index]=="z"
      puts "a"
    else puts string[index].next
  end
    index += 1
  end
end

# Decrypt
# use looping to go thru all indexes of string (use index=0 and while loop,etc)
  # assign variable to position of letter within alphabet - make this boil down to a number
  # subtract this variable by one to find the value of the new index, print this 
  # increase index

def decrypt(string)
  index = 0
  while index < string.length
    letter_position = "abcdefghijklmnopqrstuvwxyz".index(string[index])
    puts "abcdefghijklmnopqrstuvwxyz"[letter_position - 1]
    index += 1
  end
end

#tests

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")

# decrypt(encrypt("swordfish"))


#driver code
#ask secret agent (or user) whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password?"
crypt_wanted = gets.chomp

#ask for password
puts "What is the password?"
password = gets.chomp

#run requested operation
if crypt_wanted == "decrypt"
  decrypt(password)
else 
  encrypt(password)
end