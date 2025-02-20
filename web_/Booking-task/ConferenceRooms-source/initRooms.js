//preloading initial rooms into localStorage

let rooms = [
    {
        "id": 1,
        "name": "Room 01",
        "capacity": 15,
        "features": ["Smart board", "HDMI", "DisplayPort", "USB-C", "Video conferencing"],
        "hourlyRate": 45,
        "blocked": 0,
        "bookings": []
    },
    {
        "id": 2,
        "name": "Room 02",
        "capacity": 10,
        "features": ["Projector", "Canvas", "Whiteboard", "Display connections"],
        "hourlyRate": 40,
        "blocked": 0,
        "bookings": []
    },
    {
        "id": 3,
        "name": "Room 03",
        "capacity": 125,
        "features": ["Stage", "Video wall", "Video conferencing", "Sound system", "Conference microphones"],
        "hourlyRate": 150,
        "blocked": 0,
        "bookings": []
    },
    {
        "id": 4,
        "name": "Room 04",
        "capacity": 50,
        "features": ["Smart board", "Laptop docking station", "Microphone", "Sound system"],
        "hourlyRate": 75,
        "blocked": 0,
        "bookings": []
    }
];

if (!localStorage.getItem("rooms")){
    localStorage.setItem("rooms", JSON.stringify(rooms));
    console.log("[Info]: Rooms data loaded into localStorage.");
} else {
    console.log("[Info]: Rooms data already exists in localStorage: ", JSON.parse(localStorage.getItem("rooms")));
};