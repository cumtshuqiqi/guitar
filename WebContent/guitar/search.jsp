
<!DOCTYPE html>
<html lang="utf-8">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Guitar</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">          
          <a class="navbar-brand" href="#">Guitar</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">          
          <form class="navbar-form navbar-left">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
		  <ul class="nav navbar-nav navbar-left">
            <li><a href="#">search</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
      <form role="form" method="post" action="serachGuitar">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            
            <li>Builder</li>
			<li><select class="form-control" name="builder" id="1">
			  <option >search</option>
			  <option value="FENDER">Fender</option>
			  <option value="MARTIN">Martin</option>
			  <option value="GIBSON">Gibson</option>
			  <option value="COLLINGS">Collings</option>
			  <option value="OLSON">Olson</option>
			  <option value="RYAN">Ryan</option>
			  <option value="PRS"> PRs</option>
			</select></li>
			<li>Instrument Type</li>
			<li><select class="form-control" name="Instrument Type" id="2">
			<option >search</option>
			  <option value="GUITAR">Guitar</option>
			  <option value="BANJO">Banjo</option>
			  <option value="DOBRO">Dobro</option>
			  <option value="FIDDLE">Fibble</option>
			  <option value="BASS">Bass</option>
			  <option value="MANDOLIN">Mandolin</option>
			</select></li>
			<li>Style</li>
			<li><select class="form-control" name="style" id="3">
			<option >search</option>
			  <option value="A">A Style</option>
			  <option value="F">F Style</option>
			</select></li>
			<li>Type</li>
			<li><select class="form-control" name="type" id="4">
			<option >search</option>
			  <option value="ACOUSTIC">acoustic</option>
			  <option value="ELECTRIC">electric</option>
			</select></li>
			<li>BackWood</li>
			<li><select class="form-control" name="backWood" id="5">
			<option >search</option>
			  <option value="INDIAN_ROSEWOOD">Indian Rosewood</option>
			  <option value="BRAZILIAN_ROSEWOOD">Brazilian Rosewood</option>
			  <option value="MAHOGANY">Mahogany</option>
			  <option value="MAPLE">Maple</option>
			  <option value="COCOBOLO">Colobolo</option>
			  <option value="CEDAR">Cedar</option>
			  <option value="ADIRONDACK">Adirondack</option>
			  <option value="ALDER">Alder</option>
			  <option value="SITKA">Sitka</option>
			</select></li>	
			<li>TopWood</li>
			<li><select class="form-control" name="topWood" id="6">
			<option >search</option>
			  <option value="INDIAN_ROSEWOOD">Indian Rosewood</option>
			  <option value="BRAZILIAN_ROSEWOOD">Brazilian Rosewood</option>
			  <option value="MAHOGANY">Mahogany</option>
			  <option value="MAPLE">Maple</option>
			  <option value="COCOBOLO">Colobolo</option>
			  <option value="CEDAR">Cedar</option>
			  <option value="ADIRONDACK">Adirondack</option>
			  <option value="ALDER">Alder</option>
			  <option value="SITKA">Sitka</option>
			</select></li>	
          </ul>   
           <input type="submit" value="search">     
        </div>
       
        </form>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         
         
          <h2 class="sub-header">Inventory</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Builder</th>
                  <th>Model</th>
                  <th>Style</th>
                  <th>Type</th>
                  <th>BackWood</th>
                  <th>TopWood</th>
                  <th>Price</th>
                </tr>
              </thead>
              
              <tbody>
               <c:forEach items="${matchingGuitars}" var="guitar" >
			        <tr>
			            <td>${guitar.getSpec().getBuilder()}</td>
			            <td>${guitar.getSpec().getModel()}</td>
			            <td>${guitar.getSpec().getType()}</td>
			            <td>${guitar.getSpec().getBackWood()}</td>
			            <td>${guitar.getSpec().getTopWood()}</td>
			            <td>${guitar.getPrice()}</td>
			        </tr>
			    </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
     <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
