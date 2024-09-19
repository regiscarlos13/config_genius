import { Controller } from "@hotwired/stimulus"

import 'chart'

export default class extends Controller {
  static targets = ["chart"]

  connect() {
    this.initializeChart()
  }

  initializeChart() {
    const ctx = this.chartTarget.getContext('2d')
    const data = JSON.parse(this.element.dataset.chartData)

    new Chart(ctx, {
      type: data.type,
      data: {
        labels: data.labels,
        datasets: data.datasets
      },
      options: {}
    })
  }
}
