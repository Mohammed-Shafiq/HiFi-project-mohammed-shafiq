(function(){
    print_product(); /* Denne del betyder at nå html'en er loadet så kalder den på denne funtion */ 
})();

function print_product(){ /* Andreas hjalp mig med dette, det er en fetch funktion der henter produkterne fra min database og indsætter dem i html'en */
    fetch ('http://localhost:1337/produkt')
    .then((response) => {
        return response.json();
    })
    .then((data) => {
        console.log(data);
        data.forEach(function (element) {
            document.getElementById('content_1').innerHTML += `<section class="celle col-lg-5 demo-content inner-section">
            <img src="images/${element.billede}" alt="">
            <h3> ${element.navn} </h3>
            <p> Pris: ${element.pris} </p> 
            </section>
            `
        }, this);
    })
};
;