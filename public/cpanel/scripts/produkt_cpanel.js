(function(){   /* Dette tager parametret fra URL'en */
    var parseQueryString = function (url) {
    var urlParams = {};
    url.replace(
        new RegExp("([^?=&]+)(=([^&]*))?", "g"),
        function ($0, $1, $2, $3) {
            urlParams[$1] = $3;
        }
    );

    return urlParams;
}

var urlToParse = location.search; /* Dette tager hele min url */
var url = parseQueryString(urlToParse); 


    var param = JSON.stringify(url) /* Konvertere et Javascript objekt til en string ved hjælp af Json.Stringify */ 
    console.log(param)

    if (param != '{}') 
        {
            console.log("Der er et parameter")
            console.log(url.product_id)
            if (url.product_id != null)
                {
                    print_one(url.product_id);
                }
        }
    else 
        {
            console.log("Der er ikke et parameter")
            print_product();
        }




})();



    function print_product(){ /* Funktionen print_product henter og udskriver alle produkterne på hjemmesiden, det gør den ved hjælp af denne fetch */
        console.log("Henter alle produkterne")
        var placeholder = document.querySelector('#produkter')
        
        fetch('http://localhost:1337/produkt')
            .then(function (result) {
                // console.log(result);
                return result.json(); 
            })
             .then(function (produkter) {
                 var produkt = document.createElement('DIV');
                
                console.log(produkter);

                 produkter.forEach(function(element) {
                     var div = document.createElement('DIV');
                     div.classList.add("col-md-4", "text-center");
        
                    var product = document.createElement('H2'), 
                        productName = document.createTextNode(element.navn);
                    product.appendChild(productName);
                    div.appendChild(product);
                    
                    
                    var billede = document.createElement('IMG'); 
                        billede.src =  "../images/" + element.billede;
                    div.appendChild(billede);

                    var pris = document.createElement('P'), 
                        prisTekst = document.createTextNode("Pris:" + ' ' + element.pris);
                    pris.appendChild(prisTekst);
                    div.appendChild(pris);

                    var link = document.createElement('A'),
                        productLink = document.createTextNode("Rediger");
                    link.setAttribute('href', '?product_id=' + element.id)
                    link.appendChild(productLink);
                    div.appendChild(link);
        
                    produkt.appendChild(div)
                    });
        
                 return produkt;
             })
             .then(function (div) {
                 placeholder.appendChild(div);
             })
        };

        
        
        function print_one(id){ /* Funktionen print_one henter og udskriver kun et produkt, den minder meget om print_produkt men forskellen i dette er "if"-sætningen */
            console.log("Henter et produkt")
            var placeholder = document.querySelector('#produkter')
            
            fetch('http://localhost:1337/produkt')
                .then(function (result) {
                    // console.log(result);
                    return result.json(); 
                })
                 .then(function (produkter) {
                     var produkt = document.createElement('DIV');
                    
                    console.log(produkter);
    
                     produkter.forEach(function(element) {
                         if(id == element.id){ /* Hvis id er lige med elementets id så skal alt det i bunden køre  */

                         
                         var div = document.createElement('DIV');
                         div.classList.add("col-md-3", "text-center");
            
                        var product = document.createElement('INPUT');
                            product.value = element.navn;
                        product.id = "product_update_name";
                        div.appendChild(product);

                        var pris = document.createElement('INPUT');
                            pris.value = element.pris;
                        pris.id = "Product_update_price";
                         div.appendChild(pris);
                        
                        
                        var billede = document.createElement('IMG'); 
                            billede.src =  "../images/" + element.billede;
                        div.appendChild(billede);
    
                        var link = document.createElement('A'),
                            productLink = document.createTextNode("Rediger");
                        link.setAttribute('href', '?product_id=' + element.id)
                        link.appendChild(productLink);
                        div.appendChild(link);
            
                        produkt.appendChild(div)

                         }
                     });
            
                     return produkt;
                 })
                 .then(function (div) {
                     placeholder.appendChild(div);
                 })
        } 