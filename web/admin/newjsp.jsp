<%-- 
    Document   : newjsp
    Created on : Mar 5, 2022, 10:45:26 PM
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Message Box</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>

    <body>
        <div>
            <canvas id="myChart"></canvas>
        </div>
        <script>
            const labels = [
                'January',
                'February',
                'March',
                'April',
                'May',
                'June',
            ];

            const data = {
                labels: labels,
                datasets: [{
                        label: 'My First dataset',
                        backgroundColor: 'rgb(255, 99, 132)',
                        borderColor: 'rgb(255, 99, 132)',
                        data: [0, 10, 5, 2, 20, 30, 45],
                    }]
            };

            const config = {
                type: 'line',
                data: data,
                options: {}
            };
        </script>
    </body>
</html>