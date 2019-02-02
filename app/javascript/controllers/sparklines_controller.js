import "jquery-sparkline"
import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    const data = JSON.parse(this.data.get("data"))
    const options = JSON.parse(this.data.get("options"))
    $(this.element).sparkline(data, options)
  }
}
