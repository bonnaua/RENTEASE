const displayAccounting = () => {
  const btnExpenses = document.getElementById('btn-expenses');
  const btnRents = document.getElementById('btn-rents');

  const myExpenses = document.getElementById('my-expenses');
  const myRents = document.getElementById('my-rents');


  btnExpenses.addEventListener('click', (event) => {
    myRents.style.display = 'none';
    myExpenses.style.display = null;
    event.currentTarget.classList.add('btn-accounting-active');
    btnRents.classList.remove('btn-accounting-active');
  });
  btnExpenses.click();

  btnRents.addEventListener('click', (event) => {
    myExpenses.style.display = 'none';
    myRents.style.display = null;
    event.currentTarget.classList.add('btn-accounting-active');
    btnExpenses.classList.remove('btn-accounting-active');
  });
};

export { displayAccounting };
