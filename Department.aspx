<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Department.aspx.cs"
    Inherits="Department" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Department</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <asp:Label ID="lblAddUpdate" runat="server" Text="Label"></asp:Label>
                    Department
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" runat="server">
                            <div class="form-group">
                                <label>
                                    DEPARTMETN NAME</label>
                                <asp:TextBox ID="txtDepartmentName" class="form-control" Placeholder="ENTER NAME"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtDepartmentName"
                                    runat="server" ErrorMessage="DEPT NAME IS COMPULSORY"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>
                                    DEPARTMENT SHORT NAME</label>
                                <asp:TextBox ID="txtDepartmentShortName" class="form-control" Placeholder="ENTER SHORT NAME"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtDepartmentShortName"
                                    runat="server" ErrorMessage="DEPT SHORT NAME IS COMPULSORY"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>
                                    DEPARTMENT CODE
                                </label>
                                <asp:TextBox ID="txtDepartmentCode" class="form-control" Placeholder="ENTER CODE"
                                    runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDepartmentCode"
                                    runat="server" ErrorMessage="DEPT CODE COMPULSORY"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDepartmentCode"
                                    ValidationExpression="[0-9]{5}" ErrorMessage="USE ONLY NUMBER FIVE DISIT "></asp:RegularExpressionValidator>
                            </div>
                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" OnClick="button_dept" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
