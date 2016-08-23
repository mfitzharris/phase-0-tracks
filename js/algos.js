// objective- write a function that takes an array
//          of words/phrases and returns the longest
//          word/phrase in the array
// input- string (word or phrase)
// function- for each item in the array get length starting w index -1
//         - if length of item is longer than previously
//            indexed item then
//            continue 
// output- returns longest item
// ex- array=["long phrase", "longer phrase", "longest phrase"]
//     returns "longest phrase"

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


// driver code
console.log(longest(["123", "1234", "12345"]));
console.log(longest(["blah", "blahblah", "haha", "hohohohohohoho"]))