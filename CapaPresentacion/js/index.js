
$('#chatButton').on('click', function () {
    $('.chat-container').css('display', 'flex');
    $('#chatButton').hide();
});

$('#closeChat').on('click', function () {
    $('.chat-container').hide();
    $('#chatButton').show();
});

// Función para enviar un mensaje
function enviarMensaje() {
    const userInput = document.getElementById("user-input").value.trim();
    if (userInput === "") return;

    // Agregar el mensaje del usuario al chat
    agregarMensaje(userInput, "user-message");
    document.getElementById("user-input").value = "";

    // Mostrar indicador de carga
    document.getElementById("btn-icon").style.display = "none";
    document.getElementById("btn-loading").style.display = "inline";
    document.getElementById("btnenviar").disabled = true;

    // Simular solicitud con setTimeout
    setTimeout(() => {
        // Simular respuesta del backend
        const simulatedResponse = {
            answer: `Respuesta simulada a tu pregunta: "${userInput}"`
        };

        // Agregar la respuesta del bot al chat
        agregarMensaje(simulatedResponse.answer, "bot-message");

        // Ocultar indicador de carga
        document.getElementById("btn-icon").style.display = "inline";
        document.getElementById("btn-loading").style.display = "none";
        document.getElementById("btnenviar").disabled = false;
    }, 1000); // 1 segundo de retraso
}

function enviarPrompt() {

    const userInput = document.getElementById("user-input").value.trim();
    if (userInput === "") return;

    // Agregar el mensaje del usuario al chat
    agregarMensaje(userInput, "user-message");
    document.getElementById("user-input").value = "";

    document.getElementById("btn-icon").style.display = "none";
    document.getElementById("btn-loading").style.display = "inline";
    document.getElementById("btnenviar").disabled = true;

    var request = {
        prompt: userInput
    };

    $.ajax({
        type: "POST",
        url: "Default.aspx/ChatBlacutt",
        data: JSON.stringify(request),
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        success: function (response) {
            console.log(response);
            var responde = response.d;
            // Agregar la respuesta del bot al chat
            agregarMensaje(responde, "bot-message");

        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr.status + " \n" + xhr.responseText, "\n" + thrownError);
            agregarMensaje("Hubo un error al procesar tu solicitud.", "bot-message");
        },
        complete: function () {
            document.getElementById("btn-icon").style.display = "inline";
            document.getElementById("btn-loading").style.display = "none";
            document.getElementById("btnenviar").disabled = false;
        }
    });
}

// Función para agregar un mensaje al chat
function agregarMensaje(texto, clase) {
    const chatMessages = document.getElementById("chat-messages");
    const mensajeDiv = document.createElement("div");
    mensajeDiv.classList.add("message", clase);
    mensajeDiv.textContent = texto;
    chatMessages.appendChild(mensajeDiv);

    // Limitar el número de mensajes mostrados
    if (chatMessages.children.length > 50) {
        chatMessages.removeChild(chatMessages.firstChild);
    }

    // Aplicar animación
    setTimeout(() => {
        mensajeDiv.classList.add("visible");
    }, 10);

    // Desplazar el scroll al final
    chatMessages.scrollTop = chatMessages.scrollHeight;
}

$('#btnenviar').on('click', function () {
    enviarPrompt();
});

// Permitir enviar mensajes con la tecla Enter
document.getElementById("user-input").addEventListener("keydown", function (event) {
    if (event.key === "Enter") {
        enviarPrompt();
    }
});

$('#btnDownload').on('click', function () {
    window.open('documento/catalog.pdf', '_blank');
    //window.open('documento/Catalogo.pdf', '_blank');
})