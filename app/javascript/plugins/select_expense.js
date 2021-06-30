

const selectHousings = () => {

  const houseField = document.getElementById('select-housing');
  if (!houseField) return ;
  houseField.onchange = () => {
    const allExpenses = document.querySelectorAll('.expense-row:not(.d-none)')
    const expensesSelected = document.querySelectorAll(`[data-housing-id="${houseField.value}"]`);
    if (!(houseField.value == "all")) {
      allExpenses.forEach(expense => expense.classList.add('d-none'));
      expensesSelected.forEach(expense => expense.classList.remove('d-none'));
    } else {
      allExpenses.forEach(expense => expense.style.display = null);
    };
  }
}

const selectCategory = () => {
  const categoryField = document.getElementById('select-category');
  if (!categoryField) return ;

  categoryField.onchange = () => {
    console.log(categoryField.value)

    const allExpenses = document.querySelectorAll('.expense-row')
    console.log(allExpenses)
    console.log(categoryField.value)
    const expensesSelected = document.querySelectorAll(`[data-category="${categoryField.value}"]`);
    console.log(expensesSelected)
    if (!(categoryField.value == "all") ) {
      allExpenses.forEach(expense => expense.style.display = "none");
      expensesSelected.forEach(expense => expense.style.display = null);
    } else {
      allExpenses.forEach(expense => expense.style.display = null);
    };
  }
}

const selectDouble = () => {
  const allExpenses = document.querySelectorAll('.expense-row')
}
export {selectHousings};
export {selectCategory};



const selectHousings2 = () => {
  const houseField2 = document.getElementById('select-housing2');
  if (!houseField2) return ;
  houseField2.onchange = () => {
    const allRents = document.querySelectorAll('.rent-row:not(.d-none)')
    const rentsSelected = document.querySelectorAll(`[data-housing-id="${houseField2.value}"]`);
    if (!(houseField2.value == "all")) {
      allRents.forEach(rent => rent.classList.add('d-none'));
      rentsSelected.forEach(rent => rent.classList.remove('d-none'));
    } else {
      allRents.forEach(rent => rent.style.display = null);
    };
  }
}

export {selectHousings2};
