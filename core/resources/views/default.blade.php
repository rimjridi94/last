<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login In</title>
    <!-- Loading the bootstrap css  -->
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/theme.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet" type="text/css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


</head>
<body class="login-page" style="">
<div class="login-box">
    <div class="login-logo">
        {{'GereBiz'}}
    </div><!-- /.login-logo -->
    <div class="login-box-body">
        @yield('content')       
    </div>
</div>
<!-- jQuery 2.1.3 -->
<script src="{{ asset('assets/js/jquery-2.1.3.min.js') }}"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="{{ asset('assets/js/bootstrap.min.js') }}" type="text/javascript"></script>
<!-- validator.js javascript-->
<script src="{{ asset('assets/js/validator.min.js') }}"></script>

<script>
    $(function(){
        $('form').validator();
    });
</script>
</body>
</html>
