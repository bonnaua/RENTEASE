

const selectHousings = () => {
  const houseField = document.getElementById('select-housing');
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
  console.log(categoryField)
  console.log(categoryField.value)

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

