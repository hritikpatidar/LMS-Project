<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AddCustomer.aspx.cs" Inherits="AddCustomer" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Customer</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <asp:Label ID="lblAddUpdateCustomer" runat="server" Text="Label"></asp:Label> Customer 
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="Form1" role="form" runat="server">
                             <div class="form-group">
                                <label>
                                    CUSTOMERID</label>
                                <asp:TextBox ID="textCustomerId" class="form-control" Placeholder="ENTER CUSTOMERID"
                                    runat="server"></asp:TextBox>
                                
                            </div>
                            <div class="form-group">
                                <label>
                                    CUSTOMERNAME</label>
                                <asp:TextBox ID="txtCustomername" class="form-control" Placeholder="ENTER NAME"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtCustomername"
                                    runat="server" ErrorMessage="DEPT CUSTOMERNAME IS COMPULSORY"></asp:RequiredFieldValidator>
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
                                        <asp:DropDownList ID="txtCity" class="form-control" runat="server">
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
                                        <asp:DropDownList ID="txtCountry" class="form-control" runat="server">
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
                            
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="btn_clickcustomer" Text="Submit"  />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

