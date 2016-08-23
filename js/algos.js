// input- array of strings (word or phrase)
// function- for each item in the array get length starting w index -1
//         - if length of item is longer than previously
//            indexed item then
//            continue 
// output- returns longest item
// ex- array=["long phrase", "longer phrase", "longest phrase"]
//     returns "longest phrase"
//-------
// input- 2 objects
// function- compare to see if objects share at least 1 key value pair
// output- true or false
//-------
// input- integer (for length)
// function- generate array with length of input of randomized words(length of word randomized)
// output- array 

function longest(strArray) {
  var longestItem; 
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

for (var i = 0; i < 11; i++) {
  newArray = randomArray(Math.floor(Math.random() * 5)+1);
  console.log(newArray);
  console.log("the longest is: " + longest(newArray));
}

// console.log(randomArray(4));
// console.log(randomArray(2));
// console.log(randomArray(6));




