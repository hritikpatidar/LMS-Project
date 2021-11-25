<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AddLeave.aspx.cs"
    Inherits="Add_Leave" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                Leave</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <asp:Label ID="lblAddUpdateLeave" runat="server" Text="Label"></asp:Label>
                    Add Leave
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form" runat="server">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>
                                            LEAVETYPE</label>
                                        <asp:TextBox ID="txtleaveType" class="form-control" Placeholder="ENTER LEAVE TYPE"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtleaveType"
                                            runat="server" ErrorMessage="DEPT LEAVE TYPE IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            TODATE</label>
                                        <asp:TextBox ID="txtToDate" class="form-control" Placeholder="ENTER TODATE" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtToDate"
                                            runat="server" ErrorMessage="DEPT ToDate IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            FROMDATE</label>
                                        <asp:TextBox ID="TextFromDate" class="form-control" Placeholder="ENTER FROMDATE"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="TextFromDate"
                                            runat="server" ErrorMessage="DEPT FROMDATE IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            DESCRIPTION
                                        </label>
                                        <asp:TextBox ID="txtDescription" class="form-control" Placeholder="ENTER DESCRIPTION"
                                            runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtDescription"
                                            runat="server" ErrorMessage="DESCRIPTION IS COMPULSORY"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <label>
                                            EMPID
                                        </label>
                                        <asp:TextBox ID="Textempid" class="form-control" Placeholder="ENTER EMPID" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="Textempid"
                                            runat="server" ErrorMessage="EMPID IS COMPULSORY"></asp:RequiredFieldValidator>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Textempid"
                                            ValidationExpression="[0-9]{5}" ErrorMessage="USE ONLY NUMBER FIVE DISIT "></asp:RegularExpressionValidator>
                                    </div>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Btn_SubmitLeave" class="btn btn-primary btn-lg btn-block" />
                                </div>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div> </div>
</asp:Content>
