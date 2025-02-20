//form.js, A basic script for form processing and generating booking quotes
//list of rooms with characteristics
window.addEventListener('DOMContentLoaded',() => {
    let defaultRooms = JSON.parse(localStorage.getItem("rooms")) || [];
    console.log("Rooms loaded: ", defaultRooms);
});

window.addEventListener('focus', () => {
    defaultRooms = JSON.parse(localStorage.getItem("rooms")) || [];
    console.log(defaultRooms);
})
//handle form submission
document.getElementById("bookingform").addEventListener("submit", function(event){
    console.log("Rooms: ", defaultRooms);
    event.preventDefault();

    //collect user inputs
    const email = document.getElementById("email").value;

    const startDate = new Date(document.getElementById("sdate").value);

    const endDate = new Date(document.getElementById("edate").value);

    const participants = parseInt(document.getElementById("participants").value);

    const features = document.getElementById("custreq").value;

    //calculate booking duration in hours
    const duration = Math.abs((endDate - startDate)/(1000*60*60));
    if (duration <= 0){
        alert("End date must be later than start date.");
        return;
    }

    //Find suitable rooms
    const suitableRooms = defaultRooms.filter(room => room.capacity >= participants && room.features.includes(features) && room.blocked === 0 && room.bookings.every(booking => endDate < new Date(booking.start) || startDate > new Date(booking.end)));
    console.log("Filtered rooms: ", suitableRooms);
    //Generate quotes
    if (suitableRooms.length === 0){
        alert("No rooms available matching your requirements or timeframe.");
        return;
    }

    const quotes = suitableRooms.map(room => ({
        roomName: room.name,
        price: duration*room.hourlyRate,
        features: room.features,
    }));

    //Display quotes as floating cards
    displayQuotes(quotes, email);
});

function displayQuotes(quotes, email){
    const quoteContainer = document.getElementById("quote-container");

    quoteContainer.innerHTML = ""; //Clear previous quotes
    
    quotes.forEach((quote, index) => {
        const card = document.createElement("div");
        card.classList.add("quote-card");

        card.innerHTML = `
        <h3>Your Quote ${index +1}</h3>
        <p><strong>Room:</strong> ${quote.roomName}</p>
        <p><strong>Features:</strong> ${quote.features.join(", ")}</p>
        <p><strong>Your Price:</strong> $${quote.price.toFixed(2)}</p>
        <button onclick="acceptQuote('${quote.roomName}', ${quote.price}, '${email}')">Accept Quote</button>
        <button onclick="rejectQuote(${index})">Reject Quote</button>
        `;

        quoteContainer.appendChild(card);
    });
}

//Handle quote acceptance
function acceptQuote(roomName, price, email){
    const room = defaultRooms.find(room => room.name === roomName);
    console.log("Found room: ", room);
    if(room){
        room.available = 0;
        room.bookings = room.bookings || [];
        room.bookings.push({start: new Date(document.getElementById("sdate").value), end: new Date(document.getElementById("edate").value)});
        localStorage.setItem("rooms", JSON.stringify(defaultRooms));
        alert(`Booking confirmed for ${roomName} at $${price.toFixed(2)}. Confirmation sent to ${email}.`);
    };
}

//Handle quote rejection
function rejectQuote(index){
    const card = document.querySelectorAll(".quote-card")[index];
    card.remove();

    // <button onclick="acceptQuote(${quote.roomName}, ${quote.price}, ${email})">Accept Quote</button>
}