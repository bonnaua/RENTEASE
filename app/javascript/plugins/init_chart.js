import {
  Chart,
  ArcElement,
  LineElement,
  BarElement,
  PointElement,
  BarController,
  BubbleController,
  DoughnutController,
  LineController,
  PieController,
  PolarAreaController,
  RadarController,
  ScatterController,
  CategoryScale,
  LinearScale,
  LogarithmicScale,
  RadialLinearScale,
  TimeScale,
  TimeSeriesScale,
  Decimation,
  Filler,
  Legend,
  Title,
  Tooltip
} from 'chart.js';

Chart.register(
  ArcElement,
  LineElement,
  BarElement,
  PointElement,
  BarController,
  BubbleController,
  DoughnutController,
  LineController,
  PieController,
  PolarAreaController,
  RadarController,
  ScatterController,
  CategoryScale,
  LinearScale,
  LogarithmicScale,
  RadialLinearScale,
  TimeScale,
  TimeSeriesScale,
  Decimation,
  Filler,
  Legend,
  Title,
  Tooltip
);

const initChartJS =  () => {
  const dataSet = document.querySelector('.main-dashboard').dataset
  const datesExpensesLabel = Object.keys(JSON.parse(dataSet.expenses)).map((str) => `${str.split("-")[0]}-${str.split("-")[1]}`)
  console.log (datesExpensesLabel)

  console.log(datesExpensesLabel)
  console.log(JSON.parse(dataSet.expenses))
  const valuesExpenses = Object.values(JSON.parse(dataSet.expenses))

  const datesRentsLabel = Object.keys(JSON.parse(dataSet.rents))
  const valuesRents = Object.values(JSON.parse(dataSet.rents))
  console.log(valuesRents)
  console.log(typeof datesExpensesLabel[0])
  const differentiel = []
  datesExpensesLabel.forEach((element, index) => {
    if ( datesRentsLabel.includes(element) ) {
      // differentiel[index] = valuesRents[???????] - valuesExpenses[index]
    }
    else {
      differentiel[index] = - valuesExpenses[index]
    }
  })
  console.log(dataSet.rents)
  console.log(datesRentsLabel)
  console.log(valuesRents)
  const myChart = new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: datesExpensesLabel,
      datasets: [
        {
          label: "Profit (€)",
          backgroundColor: "#DAF552",
          data: valuesExpenses
        }
      ]
    },
    options: {
      plugins: {
        legend: { display: true },
        title: {
          display: true,
          text: 'Profit over the last year'
        }
      },

      scales: {
        x: {

          grid: {
            display: false
          }
        }
      }
    }
  }
  );
};



export {initChartJS}
