class SlideStories {
    constructor(id) {
        this.slide = document.querySelector(`[data-slide="${id}"]`);
        this.active = 0;
        this.init();
    }

    activeSlide(index) {
        this.active = index;
        this.items.forEach((item) => item.classList.remove('active'));
        this.items[index].classList.add('active');
        this.thumbItems.forEach((item) => item.classList.remove('active'));
        this.thumbItems[index].classList.add('active');
        this.autoSlide();
    }

    prev() {
        if (this.active > 0) {
            this.activeSlide(this.active - 1);
        } else {
            this.activeSlide(this.items.length - 1);
        }
    }

    next() {
        if (this.active < this.items.length - 1) {
            this.activeSlide(this.active + 1);
        } else {
            this.activeSlide(0);
        }
    }

    addNavigation() {
        const nextBtn = this.slide.querySelector('.slide-next');
        const prevBtn = this.slide.querySelector('.slide-prev');
        nextBtn.addEventListener('click', this.next);
        prevBtn.addEventListener('click', this.prev);
    }

    addThumbItems() {
        this.items.forEach(() => (this.thumb.innerHTML += `<span></span>`));
        this.thumbItems = Array.from(this.thumb.children);
    }

    autoSlide() {
        clearTimeout(this.timeout);
        this.timeout = setTimeout(this.next, 5000);
    }

    init() {
        this.next = this.next.bind(this);
        this.prev = this.prev.bind(this);
        this.items = this.slide.querySelectorAll('.slide-items > *');
        this.thumb = this.slide.querySelector('.slide-thumb');
        this.addThumbItems();
        this.activeSlide(0);
        this.addNavigation();
    }
}
var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
var collapseList = collapseElementList.map(function (collapseEl) {
    return new bootstrap.Collapse(collapseEl)
})



(function ($) {
    var offcanvasElementList = [].slice.call(document.querySelectorAll('.offcanvas'))
    var offcanvasList = offcanvasElementList.map(function (offcanvasEl) {
        return new bootstrap.Offcanvas(offcanvasEl)
    }
    )
})

var scrollSpy = new bootstrap.ScrollSpy(document.body, {
    target: 'scrool'
})

let senha = document.getElementById('senha');
let senhaC = document.getElementById('senhaC');

function validarSenha() {
    if (senha.value != senhaC.value) {
        senhaC.setCustomValidity("Senhas diferentes!");
        senhaC.reportValidity();
        return false;
    } else {
        senhaC.setCustomValidity("");
        return true;
    }
}

// verificar também quando o campo for modificado, para que a mensagem suma quando as senhas forem iguais
senhaC.addEventListener('input', validarSenha);



$(document).ready(function () {
    $('.date').mask('00/00/0000');
    $('.time').mask('00:00:00');
    $('.cep').mask('00000-000');
    $('.phone').mask('(00) 00000-0000');
    $('.cpf').mask('000.000.000-00');
    $('.money').mask('000.000.000.000,00');
});