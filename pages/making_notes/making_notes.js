document.addEventListener('DOMContentLoaded', function () {
    const taskInput = document.getElementById('taskInput');
    const taskList = document.getElementById('taskList');
    const addButton = document.querySelector('.add-btn');
    const SERVER_ENDPOINT = 'making_notes.php'; // Centralized server endpoint

    function addNote() {
        const noteName = taskInput.value.trim();
        if (noteName) {
            fetch(SERVER_ENDPOINT, {
                method: 'POST',
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                body: new URLSearchParams({ action: 'addNote', note_name: noteName }),
            })
                .then((response) => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then((data) => {
                    if (data.success) {
                        taskInput.value = ''; // Clear input
                        fetchNotes(); // Refresh the note list
                    } else {
                        alert(data.message || 'Failed to add note.');
                    }
                })
                .catch((error) => {
                    console.error('Error adding note:', error);
                    alert('Failed to add note. Please try again.');
                });
        } else {
            alert('Please enter a valid task name.');
        }
    }

    // Fetch all notes from the server
    function fetchNotes() {
        fetch(SERVER_ENDPOINT, {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: new URLSearchParams({ action: 'fetchNotes' }),
        })
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then((data) => {
                taskList.innerHTML = ''; // Clear existing tasks
                if (data.success) {
                    data.notes.forEach((note) => {
                        const li = document.createElement('li');
                        li.textContent = note.task_name; // Use textContent to avoid XSS
                        const removeButton = document.createElement('button');
                        removeButton.textContent = 'Remove';
                        removeButton.addEventListener('click', () => deleteNote(note.id));
                        li.appendChild(removeButton);
                        taskList.appendChild(li);
                    });
                } else {
                    alert(data.message || 'Failed to fetch notes.');
                }
            })
            .catch((error) => {
                console.error('Error fetching notes:', error);
                alert('Failed to fetch notes. Please try again.');
            });
    }

    // Delete a note
    function deleteNote(noteId) {
        fetch(SERVER_ENDPOINT, {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: new URLSearchParams({ action: 'deleteNote', note_id: noteId }),
        })
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then((data) => {
                if (data.success) {
                    fetchNotes(); // Refresh the note list
                } else {
                    alert(data.message || 'Failed to delete note.');
                }
            })
            .catch((error) => {
                console.error('Error deleting note:', error);
                alert('Failed to delete note. Please try again.');
            });
    }

    // Add note on button click
    addButton.addEventListener('click', addNote);

    // Add note when pressing Enter
    taskInput.addEventListener('keypress', (event) => {
        if (event.key === 'Enter') {
            addNote();
        }
    });

    // Load notes on page load
    fetchNotes();
});