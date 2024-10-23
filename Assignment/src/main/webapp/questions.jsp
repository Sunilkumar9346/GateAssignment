<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiple Choice Exam</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap JS Bundle (with Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- External CSS and JS -->
    <link rel="stylesheet" href="index.css">
    <script src="timer.js" defer></script>

    <style>
        /* Fixed timer style */
        #timer {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 10px 0;
            text-align: center;
            font-size: 1.5rem;
            z-index: 9999;
        }
        /* Adding margin-top to prevent content from being hidden under the fixed timer */
        .container {
            margin-top: 80px; /* Adjust this value based on the height of the fixed timer */
        }
    </style>
</head>
<body onload="startExam()">
    
    <!-- Timer fixed at the top -->
    <div id="timer">
        Time Remaining: 02:00:00
    </div>

    <div class="container mt-5">
        <h1 class="text-center mb-4">Multiple Choice Exam</h1>

        <!-- Exam Form -->
        <form action="submitExam.jsp" method="POST">
            
            <!-- Question 1 -->
            <div class="mb-4">
                <h4>1) The Dual of Boolean theorem is obtained by:</h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q1" name="q1" value="Interchanging all zeros and ones only" class="form-check-input">
                    <label for="option1_q1" class="form-check-label">A. Interchanging all zeros and ones only</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q1" name="q1" value="Changing all zeros to ones only" class="form-check-input">
                    <label for="option2_q1" class="form-check-label">B. Changing all zeros to ones only</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q1" name="q1" value="Changing all ones to zeros only" class="form-check-input">
                    <label for="option3_q1" class="form-check-label">C. Changing all ones to zeros only</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q1" name="q1" value="Interchanging operators and identity elements" class="form-check-input">
                    <label for="option4_q1" class="form-check-label">D. Interchanging operators and identity elements</label>
                </div>
            </div>

            <!-- Question 2 -->
            <div class="mb-4">
                <h4>2) The logic expression F=(X+Y+Z)(X+Y’)(Y+Z’)(X+Z) is known as:</h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q2" value="SOP form" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A. SOP form</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q2" value="SSOP form" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B. SSOP form</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q2" value="SPOS form" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C. SPOS form</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q2" value="POS form" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D. POS form</label>
                </div>
            </div>
            <!-- Question 3 -->
            <div class="mb-4">
                <h4>3)	The Boolean expression (X+Y)(X+Z) is equal to</h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q3" value="X+Z" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.X+Z</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q3" value="X+Y" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.X+Y</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q3" value="X+YZ" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.X+YZ</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q3" value="Y+XZ" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.Y+XZ</label>
                </div>
            </div>
            <!-- Question 4 -->
            <div class="mb-4">
                <h4>4) if P,Q,R are Boolean variables, then (P+Q’)(PQ’+PR)(P’R’+Q’) simplifies to </h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q4" value="PQ’" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.PQ’ </label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q4" value="PR’" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.PR’</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q4" value="PQ’+R  " class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.PQ’+R </label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q4" value="PR’+Q" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.PR’+Q</label>
                </div>
            </div>
            <!-- Question 5 -->
            <div class="mb-4">
                <h4>5) the minimum Boolean for the following circuit is </h4>
                <img alt="" src="images/q5.png">
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q5" value="AB+AC+BC" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.	AB+AC+BC</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q5" value="A+BC" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.A+BC</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q5" value="A+B" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.A+B</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q5" value="A+B+C" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.A+B+C</label>
                </div>
            </div>
            <!-- Question 6 -->
            <div class="mb-4">
                <h4>6) Match the logic gates in column A with their equivalents in column B</h4>
                <!-- Radio buttons for options -->
                <img alt="" src="images/q6.png">
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q6" value="P-2,Q-4,R-1,S-3" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.P-2,Q-4,R-1,S-3</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q6" value="P-4,Q-2,R-1,S-3" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.P-4,Q-2,R-1,S-3</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q6" value="P-2,Q-4,R-3,S-1" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.P-2,Q-4,R-3,S-1</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q6" value="P-4,Q-2,R-3,S-1" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.P-4,Q-2,R-3,S-1</label>
                </div>
            </div>
            <!-- Question 7 -->
            <div class="mb-4">
                <h4>7)	Consider the following statements: A multiplexer</h4>
                <h5>1. Selects one of the several inputs and transmits it to a single output.</h5>
                <h5>2. Routes the data from a single input to one of many outputs</h5>
                <h5>3. Converts parallel data into serial data</h5>
                <h5>4. Is a combinational circuit</h5>
                <h4>which of these statements are correct?</h4>
                <!-- Radio buttons for options -->
               
                
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q7" value="1, 2 and 4" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.1, 2 and 4</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q7" value="2, 3 and 4" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.2, 3 and 4</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q7" value="1, 3 and 4" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.1, 3 and 4</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q7" value="1, 2 and 3 Answers with Explanatory" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.1, 2 and 3 Answers with Explanatory</label>
                </div>
            </div>
            <!-- Question 8 -->
            <div class="mb-4">
                <h4>8)	The state transition diagram for the logic circuit shown is</h4>
                <img alt="" src="images/q8.png" >
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q8" value="A" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q8" value="B" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q8" value="C" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q8" value="D" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D</label>
                </div>
            </div>
            <!-- Question 9 -->
            <div class="mb-4">
                <h4>9)	A 4-bit shift register circuit configured for right-shift operation, i.e, Din → A, A → B, B → C, C → D, is shown. If the present state of the shift register is ABCD = 1101, the number of clock cycles required to reach the state ABCD = 1111 is _________.</h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q9" value="10" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.10</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q9" value="12" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.12</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q9" value="14" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.14</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q9" value="15" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.15</label>
                </div>
            </div>
            <!-- Question 10 -->
            <div class="mb-4">
                <h4>10)	The initial content of a four-bit shift register is 1000. What is the register content after it is shifted four times to the right, with the serial input being 111100?</h4>
                <!-- Radio buttons for options -->
                <div class="form-check">
                    <input type="radio" id="option1_q2" name="q10" value="1111" class="form-check-input">
                    <label for="option1_q2" class="form-check-label">A.1111</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option2_q2" name="q10" value="1100" class="form-check-input">
                    <label for="option2_q2" class="form-check-label">B.1100</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option3_q2" name="q10" value="1000" class="form-check-input">
                    <label for="option3_q2" class="form-check-label">C.1000</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="option4_q2" name="q10" value="0011" class="form-check-input">
                    <label for="option4_q2" class="form-check-label">D.0011</label>
                </div>
            </div>
            

            <!-- Submit Button -->
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit Exam</button>
            </div>

        </form>
    </div>
</body>
</html>
