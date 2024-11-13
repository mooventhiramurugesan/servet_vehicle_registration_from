<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle Information Form</title>
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e9f5e9; 
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff; 
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-control:invalid {
            background-color: #f8d7da; 
        }
        .invalid-feedback {
            color: #721c24; 
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2 class="text-center">Vehicle Information Form</h2>
        <form action="vehicledetails" method="post">
            <div class="form-group">
                <label for="customerName">Customer Name</label>
                <input type="text" class="form-control" id="customerName" name="customerName" required>
                <div class="invalid-feedback">
                    Please enter your name.
                </div>
            </div>
            <div class="form-group">
                <label for="vehicleName">Vehicle Name</label>
                <input type="text" class="form-control" id="vehicleName" name="vehicleName" required>
                <div class="invalid-feedback">
                    Please enter the vehicle name.
                </div>
            </div>
            <div class="form-group">
                <label for="intime">Check-in Time</label>
                <input type="text" class="form-control" id="intime" name="intime" required>
                <div class="invalid-feedback">
                    Please select a check-in time.
                </div>
            </div>
            <div class="form-group">
                <label for="outtime">Check-out Time</label>
                <input type="text" class="form-control" id="outtime" name="outtime" required>
                <div class="invalid-feedback">
                    Please select a check-out time.
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

   
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                var forms = document.getElementsByTagName('form');
                Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</body>
</html>
