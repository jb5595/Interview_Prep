var data = [
  [409, 194, 207, 470, 178],
  [454, 235, 333, 511, 103],
  [474, 293, 525, 372, 408],
  [428, 4321, 2786, 6683, 3921],
  [265, 262, 6206, 2207, 5712]
]

let checkSum = 0;
function checkSumData(data){
  let checksums = data.map(row => checkSumRow(row))
  return checksums.reduce(add, 0);
}

function add (a,b){
  return a+b;
}

function checkSumRow(row){
  
  let min = row[0]
  let max = row[0]
  row.forEach(function(dataPoint){
    if (dataPoint < min){
      min = dataPoint
    }
    else if (dataPoint > max) {
      max = dataPoint
    }
  })

  return max-min;
}

checkSumData(data)
