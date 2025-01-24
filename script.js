// -------HAMBURGER TOGGLE MENU-----------------------------------------------------------------------------
function toggleMenu() {
    const navbar = document.querySelector('.navbar');
    navbar.classList.toggle('active');
}

// -------PRINT WHOLE WEBSITE AS A PDF--------------------------------------------------------
const noticeBoardContainer = document.querySelector('.notice-board-container');
const noticeBoard = document.querySelector('.notice-board');
const viewAllBtn = document.getElementById('view-all-btn');
const printBtn = document.getElementById('print-btn');

viewAllBtn.addEventListener('click', () => {
    noticeBoard.style.display = 'block';
});

printBtn.addEventListener('click', () => {
    window.print();
});

// -------ADMIN OPTION ONLY (ADMIN LOG IN)-----------------------------------------------------------------------------
document.addEventListener('DOMContentLoaded', async () => {
    try {
        const response = await fetch('check_session.php');
        const data = await response.json();

        if (data.isLoggedIn) {
            const adminOption = document.getElementById('adminOption');
            if (adminOption) {
                adminOption.style.display = 'block'; // Show Admin link
            }
        }
    } catch (error) {
        console.error('Error checking login status:', error);
    }
});

// -------PRINT NOTICE FROM NOTICE BOARD-----------------------------------------------------
document.querySelectorAll('.print-btn').forEach(button => {
    button.addEventListener('click', function () {
        const pdfUrl = button.getAttribute('data-notice');
        if (pdfUrl.endsWith('.pdf')) {
            const newWindow = window.open(pdfUrl, '_blank');
            newWindow.focus();
            newWindow.print();
        } else {
            alert(`Printing functionality is not available for "${pdfUrl}".`);
        }
    });
});
