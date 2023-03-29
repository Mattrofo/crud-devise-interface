import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["startDate", "endDate"];

  connect() {
    flatpickr(this.startDateTarget, {
      minDate: "today",
      dateFormat: "Y-m-d",
      disable: [
        {
          // Désactiver toutes les dates antérieures à aujourd'hui
          from: new Date().setHours(0, 0, 0, 0),
          to: new Date(0),
        },
      ],
    });
    flatpickr(this.endDateTarget, {
      minDate: "today",
      dateFormat: "Y-m-d",
      disable: [
        {
          // Désactiver toutes les dates antérieures à aujourd'hui
          from: new Date().setHours(0, 0, 0, 0),
          to: new Date(0),
        },
      ],
    });
  }
}
