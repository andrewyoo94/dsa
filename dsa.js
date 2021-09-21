// Find Max and Min in Array

const findMaxMin = (arr) => {
    let max = arr[0];
    let min = arr[0];
    
    for(let i = 0; i < arr.length; i++) {
      if(arr[i] > max) {
        max = arr[i];
      } else if (arr[i] < min) {
        min = arr[i];
      }
    }
    
    return {
      "max": max,
      "min": min
    };
}

// Remove Duplicates

const removeDupes = (arr) => {
  let result = [];
  let previous = arr[0];
  result[0] = previous;
  
  for(let i = 0; i < arr.length; i++) {
    
    if (arr[i] != previous) {
      result.push(arr[i]);
    }
    
    previous = arr[i];
  }
  
  return result;
}


// Find Sum Pairs

const findSumPairs = (arr, value) => {
  let sumsLookup = {};
  let output = [];
  
  for(let i = 0; i < arr.length; i++) {
    let targetVal = value - arr[i];
    
    if(sumsLookup[targetVal]) {
      output.push([arr[i], targetVal]);
    }  
    
    sumsLookup[arr[i]] = true;
  }
  
  return output;
}


// Cumulative Sum

const cumulativeSum = list => {
  let result = [list[0]];
  
  for(let i = 1; i < list.length; i++) {
    result.push(list[i] + result[i-1]);
  } 
  
  return result;
}
