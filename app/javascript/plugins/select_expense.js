

const selectHousings = () => {
  const houseField = document.getElementById('select-housing');
  houseField.onchange = () => {
    const allExpenses = document.querySelectorAll('.expense-row')
    const expensesSelected = document.querySelectorAll(`[data-housing-id="${houseField.value}"]`);
    if (!(houseField.value == "all")) {
      allExpenses.forEach(expense => expense.style.display = "none");
      expensesSelected.forEach(expense => expense.style.display = null);
    } else {
      allExpenses.forEach(expense => expense.style.display = null);
    };
  }
}

// const selectCategory = () => {
//   const categoryField = document.getElementById('select-category');
//   console.log(categoryField)
//   categoryField.onchange = () => {
//     const allExpenses = document.querySelectorAll('.expense-row')
//     console.log(allExpenses)
//     console.log(categoryField.value)
//     const expensesSelected = document.querySelectorAll(`[data-category="${categoryField.value}"]`);
//     console.log(expensesSelected)
//     if (!(categoryField.value == "all")) {
//       allExpenses.forEach(expense => expense.style.display = "none");
//       expensesSelected.forEach(expense => expense.style.display = null);
//     } else {
//       allExpenses.forEach(expense => expense.style.display = null);
//     };
//   }
// }

export {selectHousings};
//export {selectCategory};

