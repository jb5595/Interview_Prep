let testArray = [0,5,2,6,2]

function merge_sort(array){
  // Base Case if array is of length 1 it is by definition sorted
  if (array.length <= 1){
    return array
  }
  // Gets Middle Index
  let middleIndex = Math.floor(array.length/2)
  // Split array into halfs
  let rightHalf = array.slice(0,middleIndex)
  let leftHalf = array.slice(middleIndex, array.length)

  // Sort Right half Recursively
  let sortedRight = merge_sort(rightHalf)
  // Sort left half Recursively
  let sortedLeft = merge_sort(leftHalf)
  // Merge Arrays
  // Create Empty array to store
  let merged = []
  let rightIndex = 0
  let leftIndex =0
  // Iterate through both arrays until reaches the end of one of the arrays
  while(leftIndex < sortedLeft.length && rightIndex < sortedRight.length){
    // If the left Arrays value is less than the right arrays value put in merged array
    if(sortedLeft[leftIndex] <= sortedRight[rightIndex]){
      merged.push(sortedLeft[leftIndex])
      leftIndex++
    }
    else{
      merged.push(sortedRight[rightIndex])
      rightIndex++
    }
  }
  // Add the leftover contents of the right array if there are still leftover values
  merged.push(...sortedRight.splice(rightIndex))
  // Add the leftover contents of the left array if there are still leftover values
  merged.push(...sortedLeft.splice(leftIndex))
  // Return the merged array
  return merged
}

merge_sort(testArray)
