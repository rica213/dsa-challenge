const mostLoyalCustomer = (frequency) => {
  const sortedCustomers = frequency.sort((a,b) => a - b)
  let numberOneCustomer = sortedCustomers[0];
  let currentCustomer = sortedCustomers[0];
  let tracker = 0;
  let maxRecurrence = 0;

  for(let i = 0; i < sortedCustomers.length; i++) {
    if(sortedCustomers[i] === currentCustomer) {
      tracker++;
    } else {
      if(tracker > maxRecurrence) {
        numberOneCustomer = sortedCustomers[i-1];
      }
      maxRecurrence = Math.max(maxRecurrence, tracker);
      tracker = 1;
      currentCustomer = sortedCustomers[i];
    }
  }
  return numberOneCustomer;
}

const getNameById = (listCustomers, id) => {
  const customer = listCustomers.find(customer => customer.id === id);
  return customer ? customer.name : 'customer does not exist';
}

const frequency = [1, 2, 1, 2, 1, 3, 2, 2];

const data = [{
  id: 1,
  name: "Larissa"
}, 
{
id: 2,
name: "Clarielle"
},
{
id: 3,
name: "Andry"
}];

const loyalCustomerId = mostLoyalCustomer(frequency); // 2
const loyalCustomerName = getNameById(data, loyalCustomerId); // Clarielle
console.log(loyalCustomerName);
