let rooms = [];
rooms[0] = prompt("New Room?")
localStorage.setItem("rooms", JSON.stringify(rooms));
let storedRooms = JSON.parse(localStorage.getItem("rooms"));
console.log(storedRooms);