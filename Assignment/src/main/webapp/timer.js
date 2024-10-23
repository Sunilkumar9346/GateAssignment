function startExam() {
    let timeRemaining = 2 * 60 * 60; // 2 hours in seconds

    const timerElement = document.getElementById("timer");

    const intervalId = setInterval(() => {
        let hours = Math.floor(timeRemaining / 3600);
        let minutes = Math.floor((timeRemaining % 3600) / 60);
        let seconds = timeRemaining % 60;

        // Format time as HH:MM:SS
        hours = hours < 10 ? "0" + hours : hours;
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        timerElement.innerHTML = `Time Remaining: ${hours}:${minutes}:${seconds}`;

        if (timeRemaining <= 0) {
            clearInterval(intervalId);
            alert("Time is up! Submitting the exam.");
            document.getElementById("examForm").submit();
        }

        timeRemaining--;
    }, 1000);
}
