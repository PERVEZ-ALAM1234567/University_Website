<?php

include '../../config.php';

// Handle API requests
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? '';

    if ($action === 'addNote') {
        $noteName = $conn->real_escape_string($_POST['note_name'] ?? '');
        if ($noteName) {
            $sql = "INSERT INTO notes (task_name) VALUES ('$noteName')";
            if ($conn->query($sql)) {
                echo json_encode(["success" => true, "message" => "Note added successfully"]);
            } else {
                echo json_encode(["success" => false, "message" => "Error: " . $conn->error]);
            }
        } else {
            echo json_encode(["success" => false, "message" => "Note name cannot be empty"]);
        }
    } elseif ($action === 'fetchNotes') {
        $sql = "SELECT * FROM notes ORDER BY created_at DESC";
        $result = $conn->query($sql);
        $notes = [];
        while ($row = $result->fetch_assoc()) {
            $notes[] = $row;
        }
        echo json_encode(["success" => true, "notes" => $notes]);
    } elseif ($action === 'deleteNote') {
        $noteId = intval($_POST['note_id'] ?? 0);
        if ($noteId) {
            $sql = "DELETE FROM notes WHERE id = $noteId";
            if ($conn->query($sql)) {
                echo json_encode(["success" => true, "message" => "Note deleted successfully"]);
            } else {
                echo json_encode(["success" => false, "message" => "Error: " . $conn->error]);
            }
        } else {
            echo json_encode(["success" => false, "message" => "Invalid note ID"]);
        }
    } else {
        echo json_encode(["success" => false, "message" => "Invalid action"]);
    }
}

$conn->close();
?>