
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="profile" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="email" name="user.user" id="username" tabindex="1" class="form-control" placeholder="Email" value="">
									</div>
									<div class="form-group">
										<input type="password" name="user.pass" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Recuerdame</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									
								</form>
								<form id="register-form" action="insert" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="user.user" id="username" tabindex="1" class="form-control" placeholder="Nombre" value="">
									</div>
									<div class="form-group">
										<input type="text" name="user.last" id="reg_last" tabindex="2" class="form-control" placeholder="Apellido">
									</div>
									<div class="form-group">
										<input type="email" name="user.mail" id="email" tabindex="3" class="form-control" placeholder="Email" value="">
									</div>
									<div class="form-group">
										<input type="password" name="user.pass" id="password" tabindex="4" class="form-control" placeholder="Password">
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>