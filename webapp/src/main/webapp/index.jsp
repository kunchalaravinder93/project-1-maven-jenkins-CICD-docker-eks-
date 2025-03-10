<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GTA-Style Registration</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@400;600&display=swap');

        /* Smooth Neon Background */
        body {
            font-family: 'Rajdhani', sans-serif;
            background: black;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }

        /* Dynamic Cityscape Background */
        body::before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1533174072545-7a4b6ad7a6c3') no-repeat center center/cover;
            filter: blur(10px) brightness(0.4);
            animation: cityFade 15s infinite alternate;
        }

        @keyframes cityFade {
            0% { filter: blur(15px) brightness(0.3); }
            100% { filter: blur(10px) brightness(0.5); }
        }

        /* 3D Floating Form Box */
        .container {
            position: relative;
            width: 400px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.2);
            text-align: center;
            animation: floatUp 1.5s ease-in-out;
        }

        @keyframes floatUp {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        h1 {
            font-size: 26px;
            color: #ffffff;
            margin-bottom: 10px;
        }

        p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
        }

        /* Input Styling */
        input {
            width: 90%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 16px;
            text-align: center;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.4);
        }

        /* Futuristic Button */
        .registerbtn {
            background: linear-gradient(90deg, #ff0055, #ffcc00);
            color: white;
            font-size: 18px;
            padding: 12px;
            width: 95%;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 0 0 15px rgba(255, 0, 85, 0.5);
        }

        .registerbtn:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(255, 200, 0, 0.8);
        }

        .registerbtn:active {
            transform: scale(0.95);
        }

        /* Login Link */
        .signin {
            margin-top: 20px;
        }

        a {
            color: #ffcc00;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #ff0055;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>🚗 GTA-Style DevOps Registration</h1>
        <p>Welcome to the future of training. Level up now! 🏙️</p>
        <hr>

        <form action="action_page.php">
            <input type="text" placeholder="🚔 Enter Username" name="Name" id="Name" required>
            <input type="tel" placeholder="📱 Mobile Number" name="mobile" id="mobile" pattern="[0-9]{10}" required>
            <input type="email" placeholder="📧 Email Address" name="email" id="email" required>
            <input type="password" placeholder="🔑 Password" name="psw" id="psw" pattern=".{6,}" required>
            <input type="password" placeholder="🔁 Confirm Password" name="psw-repeat" id="psw-repeat" required>
            <hr>

            <p>By registering, you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="registerbtn">🚀 Register Now</button>
        </form>

        <div class="signin">
            <p>Already have an account? <a href="#">Sign in</a> to continue! 🎮</p>
        </div>
    </div>

</body>
</html>
