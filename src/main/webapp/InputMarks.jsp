```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Marks Form</title>

<style>

/* ---------- RESET ---------- */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* ---------- BODY ---------- */

body {
    font-family: "Segoe UI", Arial, sans-serif;
    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    background:
        radial-gradient(circle at top left, #667eea, transparent 40%),
        radial-gradient(circle at bottom right, #764ba2, transparent 40%),
        linear-gradient(135deg, #141e30, #243b55);

    padding: 30px;
}


/* ---------- FORM CARD ---------- */

.form-container {
    width: 460px;
    padding: 35px;

    background: rgba(255, 255, 255, 0.95);

    border-radius: 25px;

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.35);

    animation: slideUp 0.7s ease;
}


/* ---------- ANIMATION ---------- */

@keyframes slideUp {

    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}


/* ---------- HEADING ---------- */

.heading {
    text-align: center;
    margin-bottom: 30px;
}

.heading .icon {
    width: 65px;
    height: 65px;

    margin: auto;
    margin-bottom: 12px;

    display: flex;
    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: linear-gradient(135deg, #667eea, #764ba2);

    color: white;

    font-size: 30px;

    box-shadow: 0 8px 20px rgba(102, 126, 234, 0.4);
}

.heading h2 {
    color: #222;
    font-size: 27px;
    margin-bottom: 5px;
}

.heading p {
    color: #777;
    font-size: 14px;
}


/* ---------- FORM GROUP ---------- */

.form-group {
    margin-bottom: 20px;
}


/* ---------- LABEL ---------- */

label {
    display: block;

    font-size: 14px;
    font-weight: 600;

    color: #333;

    margin-bottom: 7px;
}


/* ---------- INPUT BOX ---------- */

.input-box {
    position: relative;
}

.input-box span.icon {
    position: absolute;

    left: 14px;
    top: 50%;

    transform: translateY(-50%);

    font-size: 18px;
}


/* ---------- INPUT ---------- */

input[type="text"] {
    width: 100%;

    padding: 13px 15px 13px 45px;

    border: 2px solid #e2e2e2;

    border-radius: 12px;

    font-size: 15px;

    outline: none;

    background: #f9f9fb;

    transition: all 0.3s ease;
}


/* ---------- INPUT FOCUS ---------- */

input[type="text"]:focus {

    border-color: #667eea;

    background: white;

    box-shadow:
        0 0 0 4px rgba(102, 126, 234, 0.12);

    transform: translateY(-1px);
}


/* ---------- ERROR ---------- */

.error {
    display: block;

    color: #e63946;

    font-size: 13px;

    font-weight: 500;

    margin-top: 6px;

    padding-left: 5px;

    min-height: 18px;
}


/* ---------- SUBMIT BUTTON ---------- */

input[type="submit"] {

    width: 100%;

    padding: 14px;

    margin-top: 8px;

    border: none;

    border-radius: 12px;

    background: linear-gradient(
        135deg,
        #667eea,
        #764ba2
    );

    color: white;

    font-size: 16px;

    font-weight: 600;

    letter-spacing: 0.5px;

    cursor: pointer;

    box-shadow:
        0 8px 20px rgba(102, 126, 234, 0.35);

    transition: all 0.3s ease;
}


/* ---------- BUTTON HOVER ---------- */

input[type="submit"]:hover {

    transform: translateY(-3px);

    box-shadow:
        0 12px 25px rgba(102, 126, 234, 0.45);

}


/* ---------- BUTTON CLICK ---------- */

input[type="submit"]:active {

    transform: translateY(0);

}


/* ---------- MOBILE ---------- */

@media (max-width: 520px) {

    body {
        padding: 15px;
    }

    .form-container {
        width: 100%;
        padding: 25px;
    }

}

</style>

</head>


<body>

<div class="form-container">

    <div class="heading">

        <div class="icon">
            🎓
        </div>

        <h2>Student Marks</h2>

        <p>Enter your marks carefully</p>

    </div>


    <form action="InputMarksController" method="post">


        <!-- NAME -->

        <div class="form-group">

            <label>Student Name</label>

            <div class="input-box">

                <span class="icon">👤</span>

                <input
                    type="text"
                    name="name"
                    placeholder="Enter your name">

            </div>

            <span class="error">
                ${nameerr}
            </span>

        </div>


        <!-- JAVA -->

        <div class="form-group">

            <label>Java Marks</label>

            <div class="input-box">

                <span class="icon">☕</span>

                <input
                    type="text"
                    name="java"
                    placeholder="Enter Java marks">

            </div>

            <span class="error">
                ${javaerr}
            </span>

        </div>


        <!-- PYTHON -->

        <div class="form-group">

            <label>Python Marks</label>

            <div class="input-box">

                <span class="icon">🐍</span>

                <input
                    type="text"
                    name="python"
                    placeholder="Enter Python marks">

            </div>

            <span class="error">
                ${pyerr}
            </span>

        </div>


        <!-- JAVASCRIPT -->

        <div class="form-group">

            <label>JavaScript Marks</label>

            <div class="input-box">

                <span class="icon">⚡</span>

                <input
                    type="text"
                    name="javascript"
                    placeholder="Enter JavaScript marks">

            </div>

            <span class="error">
                ${jserr}
            </span>

        </div>


        <!-- SUBMIT -->

        <input
            type="submit"
            value="Submit Marks 🚀">

    </form>

</div>

</body>

</html>
```
