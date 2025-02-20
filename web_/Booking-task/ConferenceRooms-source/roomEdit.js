
    let existingRooms = JSON.parse(localStorage.getItem("rooms")) || [];

    const roomSelect = document.getElementById("roomSelect");
    const blockButton = document.getElementById("blockButton");
    const unblockButton = document.getElementById("unblockButton");
    
    function renderDropdown(){
        roomSelect.innerHTML = "";
    
        existingRooms.forEach((room, index) => {
            const option = document.createElement("option");
            option.value = index;
            option.textContent = `${room.name} (${room.blocked ? "Blocked" : "Available"})`;
    
            option.style.color = room.blocked ? "red" : "green";
            roomSelect.appendChild(option);
        });
        
        console.log("[DEBUG]: Dropdown rendered: ", existingRooms)
    };
    
    blockButton.addEventListener("click", () => {
        const selectedIndex = parseInt(roomSelect.value);
    
        if (!isNaN(selectedIndex)){
            existingRooms[selectedIndex].blocked = 1;
            localStorage.setItem("rooms", JSON.stringify(existingRooms));
            alert("Selected room blocked successfuly.");
            renderDropdown();
        };
    });
    
    unblockButton.addEventListener("click", () => {
        const selectedIndex = parseInt(roomSelect.value);
    
        if (!isNaN(selectedIndex)){
            existingRooms[selectedIndex].blocked = 0;
            localStorage.setItem("rooms", JSON.stringify(existingRooms));
            alert("Selected room unblocked successfully.")
            renderDropdown();
        };
    });
    
    renderDropdown(); 