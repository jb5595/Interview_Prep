let testString = "Hello this is a a test string"
let replacer = "%20"


function replaceSpaces(string, replacer){
  let newString = new String
  let j = 0;
  for (let i = 0; i < string.length; i++){
    if (string[i] != " "){
      newString[i] = testString[i]
      debugger

    }
    else{
      newString[i] = replacer
    }

  }
  console.log(newString.join(""))
}

replaceSpaces(testString, replacer)
