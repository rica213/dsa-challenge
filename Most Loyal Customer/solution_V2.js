const mostLoyalCustomer = (frequency) => {
  const frequencyObj = {};
  let maxFrequency = 0;
  let loyalCustomerId;
  for(let i = 0; i < frequency.length; i++) {
    if(frequencyObj[frequency[i]] === undefined) {
      frequencyObj[frequency[i]] = 1;
    } else {
      frequencyObj[frequency[i]]++;
    }
  }
  for(customer in frequencyObj) {
    if(frequencyObj[customer] > maxFrequency) {
      maxFrequency = frequencyObj[customer];
      loyalCustomerId = customer;
    }
  }
  return loyalCustomerId;
}  
