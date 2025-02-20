//Js Logic for admin-side room management
//handle Admin form submission
let defRooms = JSON.parse(localStorage.getItem("rooms")) || [];
    document.getElementById("roomAdd").addEventListener("submit", function(event){
        event.preventDefault();
    
        //get data from admin Form
        const roomID = parseInt(document.getElementById("roomID").value);
        const roomName = document.getElementById("name").value;
        const capacity = parseInt(document.getElementById("capacity").value);
        const features = document.getElementById("features").value;
        const hourlyRate = parseInt(document.getElementById("price").value);

        const array = features.split(",").map((item) => item.trim());
    
        //Create a new room
        const newRoom = {
            id: roomID,
            name: roomName,
            capacity: capacity,
            features: array,
            hourlyRate: hourlyRate,
            blocked: 0,
            bookings: []
        };

        function addRoom(newRoom){
            try {
                const isDuplicate = defRooms.some((room) => room.id ===roomID);

                if (isDuplicate){
                    throw new Error(`${roomName} couldn't be added because a room with ID ${roomID} already exists.`);
                };

                defRooms.push(newRoom);
                localStorage.setItem("rooms", JSON.stringify(defRooms));
                console.log("Updated array: ", JSON.parse(localStorage.getItem("rooms")) || []);
                alert(`${roomName} added successfully`);
            }
            catch(err){
                alert(err.message);
            };
            
        };

        addRoom(newRoom);

        console.log(newRoom); //debug 
    });