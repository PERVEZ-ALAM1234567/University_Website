<?php
include '../../config.php';


// Fetch random questions
$sql = "SELECT sl_no, question, option_1, option_2, option_3, option_4, `correct_option` FROM gk_questions ORDER BY RAND()";
$result = $conn->query($sql);

$questions = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $questions[] = $row;
    }
}

// Return JSON response
header('Content-Type: application/json');
echo json_encode($questions);

$conn->close();
?>
