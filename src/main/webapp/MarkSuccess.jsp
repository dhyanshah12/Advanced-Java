<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Marks Result</title>

<style>

/* RESET */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


/* BODY */

body {

    min-height: 100vh;

    display: flex;
    justify-content: center;
    align-items: center;

    font-family: "Segoe UI", Arial, sans-serif;

    background:
        radial-gradient(circle at top left, #667eea, transparent 40%),
        radial-gradient(circle at bottom right, #764ba2, transparent 40%),
        linear-gradient(135deg, #141e30, #243b55);

    padding: 30px;
}


/* MAIN CARD */

.result-container {

    width: 700px;

    background: rgba(255, 255, 255, 0.96);

    padding: 35px;

    border-radius: 25px;

    box-shadow:
        0 25px 60px rgba(0, 0, 0, 0.35);

    animation: showCard 0.7s ease;

}


/* ANIMATION */

@keyframes showCard {

    from {
        opacity: 0;
        transform: translateY(40px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }

}


/* HEADER */

.header {

    text-align: center;

    margin-bottom: 30px;

}

.header .icon {

    width: 65px;
    height: 65px;

    margin: auto;
    margin-bottom: 12px;

    display: flex;

    justify-content: center;
    align-items: center;

    border-radius: 50%;

    background: linear-gradient(
        135deg,
        #667eea,
        #764ba2
    );

    font-size: 30px;

    box-shadow:
        0 8px 20px rgba(102, 126, 234, 0.4);

}

.header h1 {

    color: #222;

    font-size: 28px;

    margin-bottom: 5px;

}

.header p {

    color: #777;

    font-size: 14px;

}


/* TABLE */

table {

    width: 100%;

    border-collapse: separate;

    border-spacing: 0;

    overflow: hidden;

    border-radius: 15px;

    box-shadow:
        0 5px 20px rgba(0, 0, 0, 0.08);

}


/* TABLE HEADER */

th {

    padding: 16px;

    color: white;

    font-size: 15px;

    text-align: center;

    background: linear-gradient(
        135deg,
        #667eea,
        #764ba2
    );

}


/* TABLE DATA */

td {

    padding: 16px;

    text-align: center;

    font-size: 15px;

    color: #333;

    background: #ffffff;

    border-bottom: 1px solid #eeeeee;

}


/* ALTERNATE ROW */

tr:nth-child(even) td {

    background: #f8f9ff;

}


/* HOVER */

tbody tr:hover td {

    background: #eef0ff;

    transform: scale(1.01);

    transition: 0.2s ease;

}


/* NAME */

td:first-child {

    font-weight: 600;

}


/* MARKS */

td:not(:first-child) {

    font-weight: 600;

}


/* FOOTER */

.footer {

    text-align: center;

    margin-top: 25px;

    color: #777;

    font-size: 13px;

}


/* MOBILE */

@media (max-width: 750px) {

    .result-container {

        width: 100%;

        padding: 20px;

    }

    table {

        font-size: 13px;

    }

    th,
    td {

        padding: 12px 7px;

    }

}

</style>

</head>


<body>


<div class="result-container">


    <div class="header">

        <div class="icon">
            🎓
        </div>

        <h1>Student Marks Report</h1>

        <p>Academic Performance</p>

    </div>


    <table>

        <thead>

            <tr>

                <th>Name</th>

                <th>Java</th>

                <th>Python</th>

                <th>JavaScript</th>

            </tr>

        </thead>


        <tbody>

            <tr>

                <td>${nameValue}</td>

                <td>${javaValue}</td>

                <td>${pyValue}</td>

                <td>${jsValue}</td>

            </tr>

        </tbody>

    </table>


    <div class="footer">

        🎯 Keep learning and keep improving!

    </div>


</div>


</body>

</html>
