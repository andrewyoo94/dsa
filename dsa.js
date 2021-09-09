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