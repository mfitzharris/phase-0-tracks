// input- array of strings (words or phrases)
// function- 
//         - set longest length variable to zero
//         - iterate over each item in the array + get length starting w index 0
//         - if item's length is longer than longestLength 
//            set item to longestItem & its length to longestLength
// output- returns longest item
// ex- array=["long phrase", "longer phrase", "longest phrase"]
//     returns "longest phrase"
//-------
// input- 2 objects
// function- compare to see if objects share at least 1 key value pair
// output- true or false
//-------
// input- integer (for length of generate array)
// function- 
//      set variables for array of the alphabet, and an empty array
//      run loop # of times as inputed integer
//        set empty string
//        use math to generate random length for generated string
//        for that length use math to find a random index of alphabet array
//          and add that to the empty string
//        add the completed string to the empty array
//      return the array      
// output- array 
// ------

function longest(strArray) {
  var longestLength = 0;
  for (var i=0; i<strArray.length; i++) {
    if(strArray[i].length > longestLength) {
      longestItem = strArray[i];
      longestLength = strArray[i].length;
    }
  } return longestItem;
}

function comparePairs(object1, object2){
  for(var key in object1) {
    if (key+object1[key]==key+object2[key]) {
      return true;
    }
    else 
      return false;
  }
}

// create random array with defined length with random words of a random length
function randomArray(int) {
  var arr = [];
  alphabet = ['a','b','c','d','e','f','g', 'h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']; 
  for (var i=0; i<int; i++) {
    string = '';
    strLength = Math.floor(Math.random() * 10) + 1;
  
    for (var j=0; j<=strLength; j++) {
      string += alphabet[Math.floor(Math.random() * 26)];
    }
    arr.push(string);
  } 
  return arr
}


// driver code //
console.log(longest(["123", "1234", "12345"]));
console.log(longest(["blah", "blahblah", "haha", "hohohohohohoho"]))

objectA = {key:"value1", key2:"value2", key3:"value3"};
objectB = {key:"value1", key2:"value2", key3:"value3"};
objectC = {key:"value2", key2:"value3", key3:"value4"};
objectD = {key:"value1", key2:"value3", key3:"value5"}; 

console.log(comparePairs(objectA, objectB)); //should return true (identical)
console.log(comparePairs(objectA, objectC)); //should return false 
console.log(comparePairs(objectA, objectD)); //should return true (first k/v pair is same)

// generate 10 random arrays (using randomArray method- with argument for length randomize)
// find the longest string in each array
for (var i = 0; i < 11; i++) {
  newArray = randomArray(Math.floor(Math.random() * 5)+2);
  console.log(newArray);
  console.log("the longest is: " + longest(newArray));
}

 
// console.log(randomArray(4));
// console.log(randomArray(2));
// console.log(randomArray(6));




