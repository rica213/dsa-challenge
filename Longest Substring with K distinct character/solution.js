function longestSubstringWithKDistinct(str, k){
    let maxLength = 0;
    let charFrequency = {};
    let start = 0;
    
    for(let end = 0; end < str.length; end++){
        let currentChar = str[end];
        if(!(currentChar in charFrequency)){
            charFrequency[currentChar] = 0;
        }
        charFrequency[currentChar]++;
        
        while(Object.keys(charFrequency).length > k){
            let startChar = str[start]
            charFrequency[startChar]--;
            if(charFrequency[startChar] === 0){
                delete charFrequency[startChar];
            }
            start++;
        }
        maxLength = Math.max(maxLength, end + 1 - start)
    }
    return maxLength;
}

console.log(longestSubstringWithKDistinct('cbbebi', 3)) // 5
