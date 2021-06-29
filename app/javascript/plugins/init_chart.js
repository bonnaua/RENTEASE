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
  const dataSetElement = document.querySelector('.main-dashboard')
  if (!dataSetElement) return ;
  const dataSet = dataSetElement.dataset;
  const expenses = {}
  const rents = JSON.parse(dataSet.rents)
  const profits = {}
  const dataExpenses = JSON.parse(dataSet.expenses)
  const tresuryLine = {}
  Object.keys(dataExpenses).forEach((key) => {
    const value = dataExpenses[key]
    const newKey = key.split(" ")[0]
    expenses[newKey] = value
  })

  Object.keys(expenses).forEach((month, index) => { // Postulat que expenses continues (tous les mois)
    const rent = (rents[month] === undefined) ? 0 : rents[month] // Si pas de rents
    profits[month] = rent - expenses[month]
    tresuryLine[month] = Object.values(profits).reduce((a, b) => a + b, 0)
  })
  const ctx = document.getElementById("bar-chart")
  ctx.style.height = "450px";
  ctx.style.width = "900px";
  ctx.style.margin = "16px auto";

  const myChart = new Chart(ctx, {
    data: {
      labels: Object.keys(profits),
      datasets: [
        {
          type: 'bar',
          label: "Profit (€)",
          backgroundColor: "#DAF552",
          yAxisID: 'y',
          data: Object.values(profits)
        },
        {
          type: 'line',
          label: 'Tresory Line',
          yAxisID: 'y1',
          data: Object.values(tresuryLine)
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
      responsive: false,

      scales: {
        x: {
          grid: {
            display: false
          }
        },
        y: {
           type: 'linear',
           display: true,
           position: 'left',
         },
        y1: {
           type: 'linear',
           display: true,
           position: 'right'
        }
      }
    }
  }
  );
};



export {initChartJS}
