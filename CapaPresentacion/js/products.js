
const products = [
    { 
        id: 1, 
        type: 'MEDIUM',
        definition: 'Premium quality whole walnuts, medium in size, with no signs of chipping.',
        specification: 'The seed count per pound is 110 to 130. Moisture content is between 2 and 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/medium.jpg',
        imagenMo: 'imagenes/mediumMo.png'
    },
    { 
        id: 2,
        type: 'MIDGET',
        definition: 'Premium quality whole nuts, medium in size, showing no signs of chipping.',
        specification: 'Seed count per pound of 160 to 180. Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/midget.jpg',
        imagenMo: 'imagenes/midguetMo.png'
    },
    { 
        id: 3,
        type: 'TINY',
        definition: 'Premium whole nuts, small in size, showing no signs of chipping.',
        specification: 'Seed count per pound equal to or greater than 180. Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/tiny.jpg',
        imagenMo: 'imagenes/tinyMo.png'
    },
    { 
        id: 4,
        type: 'CHIPPED',
        definition: 'Dried shelled chestnuts of all sizes that have suffered minor physical damage during the conditioning process (chipping without losing their natural shape). The size of this category must be greater than three-quarters of a whole chestnut. A 5% tolerance for the Broken category is acceptable.',
        specification: 'No specification Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/chipped.jpg',
        imagenMo: 'imagenes/chippedMo.png'
    },
    { 
        id: 5,
        type: 'BROKEN',
        definition: 'They are broken nuts; they are equal to or less than 50% of the whole nut.',
        specification: 'No specification Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/broken.jpg',
        imagenMo: 'imagenes/brokenMo.png'
    },
    { 
        id: 6,
        type: 'BROKEN D',
        definition: 'They are recovery nuts that are less than or equal to ¼ of a whole nut.',
        specification: 'No specification Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/brokenD.jpg',
        imagenMo: 'imagenes/brokenDMo.png'
    },
    { 
        id: 7,
        type: 'BROKEN 7',
        definition: 'They are smaller recovery nuts or (called rain nuts)',
        specification: 'No specification Humidity is between 2 to 4%.',
        packing: 'Packaged 20 kg = 44 lbs',
        imagen: 'imagenes/broken7.jpg',
        imagenMo: 'imagenes/broken7Mo.png'
    }
]

$(document).ready(function () {
    listproducts();
})

function listproducts() {

    $("#listaPr").empty();

    products.forEach((item, index) => {
        //console.log(item.type);
        let delay = (0.1 + (index * 0.2)).toFixed(1);
        let wowTime = delay + "s";

        const cardHtml = `
        <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="${wowTime}">
            <div class="membership-item position-relative">
              <img class="img-fluid" src="${item.imagen}" alt="" />
              <h1 class="display-1">0${index + 1}</h1>
              <h4 class="text-white mb-3">${item.type}</h4>
              <h3 class="text-primary mb-4">Details</h3>
              <p><i class="fa fa-check text-primary me-3"></i>${item.packing}</p>
              <p><i class="fa fa-check text-primary me-3"></i>-----</p>
              <a class="btn btn-outline-light px-4 mt-3 btn-detail"
              data-activodetalle='${encodeURIComponent(JSON.stringify(item))}'
              href="#">See more details</a>
            </div>
        </div>`;

        $("#listaPr").append(cardHtml);
    })
}

$(document).on("click", ".btn-detail", function (e) {
    e.preventDefault();

    var activodetalleStr = decodeURIComponent($(this).attr("data-activodetalle"));
    //var activodetalleStr = $(this).attr("data-activodetalle");
    var detalle = JSON.parse(activodetalleStr);

    if (!detalle || !detalle.id) {
        console.warn("Objeto detalle inválido", detalle);
        return;
    }
    console.log(detalle);
    $("#defini").text(detalle.definition);
    $("#specifi").text(detalle.specification);
    $("#packi").text(detalle.packing);
    $("#typesa").text("Type: " + detalle.type);
    $("#imgUsuarioMx").attr("src", detalle.imagenMo);
    $("#detalleModal").modal("show");
    //resto de mi logica
});

function listproductsccc() {
    products.forEach((item, index) => {
        let delay = (0.1 + (index * 0.2)).toFixed(1);
        let wowTime = delay + "s";
        console.log(item.type + " " + wowTime);
    })
}

$('#catall').on('click', function (e) {
    e.preventDefault();
    window.open('documento/catalog.pdf', '_blank');
});