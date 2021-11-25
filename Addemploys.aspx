<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Addemploys.aspx.cs"
    Inherits="Addemploys" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Employees</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <asp:Label ID="lblAddUpdateemp" runat="server" Text="Label"></asp:Label>ADD EMPLOYEES
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="Form1" role="FORM-CONTROL" runat="server">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>
                                            EMPID</label>
                                        <asp:TextBox ID="TextEmpid" class="form-control" Placeholder="ENTER EMPID" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextEmpid"
                                            runat="server" ErrorMessage="DEPT EMPID IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            FIRST NAME</label>
                                        <asp:TextBox ID="txtFirstName" class="form-control" Placeholder="ENTER FIRST NAME"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFirstName"
                                            runat="server" ErrorMessage="DEPT FIRST NAME IS COMPULSORY"></asp:RequiredFieldValidator>
                                       
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            LAST NAME</label>
                                        <asp:TextBox ID="txtLastName" class="form-control" Placeholder="ENTER LAST NAME"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLastName"
                                            runat="server" ErrorMessage="DEPT SHORT NAME IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <h5>
                                        <b>EMAIL ID</b>
                                    </h5>
                                    <div class="form-group input-group">
                                      
                                        <asp:TextBox ID="txtEmailId" class="form-control" placeholder="ENTER USER EMAIL ID "
                                            runat="server"></asp:TextBox>
                                        
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                                            ControlToValidate="txtEmailId" runat="server" ErrorMessage="EMAIL IS CORRECT FORM"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            PASSWORD</label>
                                        <asp:TextBox ID="txtpasswprd" class="form-control" Placeholder="ENTER PASSWORD" TextMode="Password"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtpasswprd"
                                            runat="server" ErrorMessage="PASSWORD IS COMPULSORY"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="retypepassword" class="form-control" runat="server" TextMode="password"
                                            placeholder="RE-ENTER PASSWORD"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="retypepassword"
                                            runat="server" ErrorMessage="RE-ENTER PASSWORD"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage=" type same password"
                                            ControlToValidate="retypepassword" ControlToCompare="txtpasswprd" Type="String"></asp:CompareValidator>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>
                                            DATE OF BIRTH</label>
                                        <asp:TextBox ID="txtDob" class="form-control" Placeholder="ENTER DOB" runat="server"></asp:TextBox>
                                    </div>
                                   
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>
                                            DEPARTMENT
                                        </label>
                                        <asp:TextBox ID="txtDepartment" class="form-control" Placeholder="ENTER DEPARTMENT" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtDepartment"
                                            runat="server" ErrorMessage="DEPT IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            ADDRESS
                                        </label>
                                        <asp:TextBox ID="txtAddress" class="form-control" Placeholder="ENTER ADDRESS" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtAddress"
                                            runat="server" ErrorMessage="ADDRESS IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            CITY</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                            <asp:ListItem Text="NEEMUCH" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="DILHI" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="MANDSOUR" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="NAGDA" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="RATLAM" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="UDAIPUR" Value="5"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            COUNTRY</label>
                                        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                            <asp:ListItem Text="CANADA" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="CHINA" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="INDIA" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="PAKISTAN" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="JAPAN" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="NEPAL" Value="6"></asp:ListItem>
                                            <asp:ListItem Text="ROMANIA" Value="7"></asp:ListItem>
                                            <asp:ListItem Text="AMERICA" Value="8"></asp:ListItem>
                                            <asp:ListItem Text="NEW ZEALAND" Value="9"></asp:ListItem>
                                            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ControlToValidate="DropDownList2" ErrorMessage="Plz Select Your Country">
                                            </asp:RequiredFieldValidator>--%>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            MOBAIL NUMBER</label>
                                        <asp:TextBox ID="txtPhonenumber" class="form-control" Placeholder="ENTER PHONE NUMBER"
                                            runat="server"></asp:TextBox>
                                        
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhonenumber"
                                            ValidationExpression="[0-9]{10}" ErrorMessage="use only mobile number "></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            STATUS</label>
                                        <textarea id="txtStatus" class="form-control" placeholder="STATUS" rows="5"></textarea>
                                    </div><br><br>
                                     <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg btn-block"
                                        OnClick="btn_click" />
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
