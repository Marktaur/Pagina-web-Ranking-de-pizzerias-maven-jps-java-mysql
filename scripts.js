




//Defenir Precio de pizzas
const pizzaMuza = 2500;
const pizzaFuga = 2800;
const pizzaCala = 3000;
const pizzaJamon = 3200;
const pizzaEspecial = 4500;


// tomar los elementos

const cantidad = document.getElementById('cantidad');
const categoria = document.getElementById('categoria');
const totalPagar = document.getElementById('totalAPagar');
const btnResumen = document.getElementById('resumen');






function calcularPago() {

    let total = cantidad.value ;

    switch (categoria.value) {
        case "grandem":
            total = total * pizzaMuza;
            break;
        case "fuga":
            total = total * pizzaFuga;
            break;
        case "cala":
            total = total * pizzaCala;
            break;
        case "jamon":
            total = total * pizzaJamon;
            break;
        case "especial":
            total = total * pizzaEspecial;
            break;
    }

    totalPagar.textContent = `Total a Pagar: $ ${total}`;
    console.log("hola");
    alert("Hola, gracias por elejirnos tu pedido demorara 30 min , Total a pagar = "+total+"$");
    
}

btnResumen.addEventListener('click', (e) => {
    e.preventDefault();
    calcularPago();
    

});