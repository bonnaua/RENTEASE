const displayAccounting = () => {
  const btnExpenses = document.getElementById('btn-expenses');
  const btnRents = document.getElementById('btn-rents');

  const myExpenses = document.getElementById('my-expenses');
  const myRents = document.getElementById('my-rents');

  btnExpenses.addEventListener('click', (event) => {
    myRents.style.display = 'none';
    myExpenses.style.display = null;
  });

  btnRents.addEventListener('click', (event) => {
    myExpenses.style.display = 'none';
    myRents.style.display = null;
  });
};

export { displayAccounting };
