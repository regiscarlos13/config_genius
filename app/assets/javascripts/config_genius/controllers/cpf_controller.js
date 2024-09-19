import { Controller } from "@hotwired/stimulus"
export default class extends Controller {

    static targets = ["cpf"]

    initialize() {
        $(this.cpf).mask('000.000.000-00')
    }

    valida_cpf() {
        if (validate(this.cpf.value) == false) {
            this.cpf.style.borderColor = '#f00';
        };
        if (validate(this.cpf.value) == true) {
            this.cpf.style.borderColor = '#198754';
        };
        if (this.cpf.value == null) {
            this.cpf.style.borderColor = '#f00';
        };
    }
    get cpf() { return this.cpfTarget }
}