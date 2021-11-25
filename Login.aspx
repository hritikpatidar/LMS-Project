<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LMS project</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/startmin.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style>
        body
        {
            min-height: 100vh;
            background-image: linear-gradient(120deg,#3498db,#2de209);
        }
        .panel-title
        {
        	color:blue;
        	}
        
    </style>
</head>
<body>
    <%-- <form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title" >
                            Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" runat="server">
                        <fieldset>
                            <div>
                            </div>
                            <div class="form-group">
                                <%--<input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>--%>
                                <asp:TextBox ID="txtUserName" class="form-control" placeholder="User Name" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <%--<input class="form-control" placeholder="Password" name="password" type="password"
                                    value="">--%>
                                <asp:TextBox ID="txtPassword" class="form-control" placeholder="Password" TextMode="Password"
                                    runat="server"></asp:TextBox>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <asp:Button ID="btnLogin" class="btn btn-lg btn-success btn-block" runat="server"
                                Text="Login" OnClick="btnLogin_Click" />
                        </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery -->

    <script src="js/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->

    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->

    <script src="js/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->

    <script src="js/startmin.js"></script>

</body>
</html>
