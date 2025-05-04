// Wait until the HTML document is fully loaded before running the script
document.addEventListener("DOMContentLoaded", () => {
    // Access DOM elements by their ID
    const questionContainer = document.getElementById("questions"); // Container for displaying questions
    const nextButton = document.getElementById("next"); // Button to go to the next question
    const resultContainer = document.getElementById("result"); // Container to display the results

    // Initialize variables for the current question index and user's score
    let currentQuestionIndex = 0; // Index to keep track of which question is being displayed
    let score = 0; // Variable to store the user's score
    let questions = []; // Array to store the fetched questions

    // Fetch random questions from the PHP server
    fetch("gk_exam.php") // Send a request to 'c_exam.php' to fetch questions
        .then((response) => response.json()) // Parse the JSON response
        .then((data) => {
            questions = data; // Store the fetched questions in the 'questions' array
            displayQuestion(); // Call function to display the first question
            nextButton.style.display = "inline-block"; // Make the 'Next' button visible once questions are loaded
        })
        .catch((error) => console.error("Error fetching questions:", error)); // Log an error if the fetch fails

    // Function to display the current question
    function displayQuestion() {
        // Check if there are still questions to display
        if (currentQuestionIndex < questions.length) {
            // Get the current question object from the array
            const question = questions[currentQuestionIndex];

            // Set the inner HTML of the question container with the question and options
            questionContainer.innerHTML = `
                <p><strong>Question ${currentQuestionIndex + 1} :- ${question.question}</strong></p>
                <ul>
                    <li><label><input type="radio" name="option" value="${question.option_1}"> ${question.option_1}</label></li>
                    <li><label><input type="radio" name="option" value="${question.option_2}"> ${question.option_2}</label></li>
                    <li><label><input type="radio" name="option" value="${question.option_3}"> ${question.option_3}</label></li>
                    <li><label><input type="radio" name="option" value="${question.option_4}"> ${question.option_4}</label></li>
                </ul>
            `;
        } else {
            // If all questions have been displayed, show the result
            showResult();
        }
    }

    // Function to display the final result (score)
    function showResult() {
        // Hide the question container and 'Next' button
        questionContainer.style.display = "none";
        nextButton.style.display = "none";

        // Display the score in the result container
        resultContainer.innerHTML = `<h2>Your Score: ${score} / ${questions.length}</h2>`;
        resultContainer.style.display = "block"; // Make the result container visible
    }

    // Event listener for the 'Next' button click
    nextButton.addEventListener("click", () => {
        // Call the function to handle the question and score logic
        handleNext();
    });

    // Event listener for the "Enter" key press to proceed to the next question
    document.addEventListener("keydown", (event) => {
        // Check if the pressed key is "Enter" (key code 13) and an option is selected
        if (event.key === "Enter") {
            const selectedOption = document.querySelector('input[name="option"]:checked');
            if (selectedOption) {
                // Call the function to handle the question and score logic
                handleNext();
            }
        }
    });

    // Function to handle moving to the next question and updating the score
    function handleNext() {
        // Get the selected option from the radio buttons
        const selectedOption = document.querySelector('input[name="option"]:checked');

        // If an option is selected, proceed to check the answer
        if (selectedOption) {
            // Get the correct answer for the current question
            const correctAnswer = questions[currentQuestionIndex]["correct_option"];
            
            //  === FOR DEBUG PURPOSE ONLY ===

            // console.log("Selected Option: ", selectedOption.value);
            // console.log("Correct Answer: ", correctAnswer);
            // console.log("Match result: ", selectedOption.value === correctAnswer);
 
            
            // Check if the selected answer matches the correct answer
            if (selectedOption.value === correctAnswer) {
                score++; // Increment the score if the answer is correct
            }

            // Move to the next question by incrementing the index
            currentQuestionIndex++;

            // Call the function to display the next question
            displayQuestion();
        } else {
            // If no option is selected, ask the user to choose an option
            alert("Please select an option before proceeding.");
        }
    }
});