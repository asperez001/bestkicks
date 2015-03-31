<html>
	<head>
		<link href='//fonts.googleapis.com/css?family=Lato:100' rel='stylesheet' type='text/css'>
		<link href="/bootstrap/css/bootstrap.css" rel="stylesheet">

		<!-- Loading Stylesheets -->    
		<link href="/css/archon.css" rel="stylesheet">
		<link href="/css/responsive.css" rel="stylesheet">
		<link href="/css/timeline.css" rel="stylesheet">

		<!-- Loading Custom Stylesheets -->    
		<link href="/css/custom.css" rel="stylesheet">

		<link rel="shortcut icon" href="/images/favicon.ico">

		<link href="/css/webapp.css" rel="stylesheet">
		<style>
			body {
				margin: 0;
				padding: 0;
				width: 100%;
				height: 100%;
				color: #B0BEC5;
				display: table;
				font-weight: 100;
				font-family: 'Lato';
			}

			.container {
				text-align: center;
				display: table-cell;
				vertical-align: middle;
			}

			.content {
				text-align: center;
				display: inline-block;
			}

			.title {
				font-size: 96px;
				margin-bottom: 40px;
			}

			.quote {
				font-size: 24px;
			}
		</style>
	</head>
	<body background="/images/wood-dark.png">
		<div class="container">
			<div class="content">
				<div class="title">Best Kicks</div>
				<div class="quote">{{ Inspiring::quote() }}</div>
			</div>
		</div>
		<br>
		@if (Auth::guest())
			<a href="/auth/login" class="btn btn-lg  btn-default">Login</a>
			<a href="/register" class="btn btn-lg  btn-default">Register</a>
		@else
			<a href="/adminhome" class="btn btn-lg btn-default">Home</a>
			<a href="/auth/logout" class="btn btn-lg btn-default">Logout</a>
		@endif
	</body>
</html>
