//input - string as parameter
//function - 
//  - set a newstring variable to empty string
//  - for the length(minus 1 to account for zero indexing) of the string, 
//  - iterate over backwards
//  - Add each letter to the new string
//output - return the reversed string
//ex - "hello" should output to "olleh"

// function reverse(string) {
//   newString = '';
//   for (var i = string.length - 1; i >= 0; i--){} 
//   newString += string[i];
//   return newString;
// };

function reverse (string) {
  newString = '';
  for (var i = string.length-1; i > -1; i--){
    newString += string[i];
  }
  return newString;
}

//driver code
reversedString = reverse("hello")
if (1==1) {
  console.log(reversedString)
}