<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ManageEmployees.aspx.cs"
    Inherits="ManageEmployees" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
    <body>
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    MANAGE EMPLOYEES</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        DISPLAY EMPLOYEES TABLE
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="Form1" role="form" runat="server">
                                <asp:GridView ID="GrdDept" CssClass="table table-striped table-bordered table-hover"
                                    runat="server" DataKeyNames="EmployeeId" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField HeaderText="#">
                                            <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField HeaderText="Employees Id" DataField="EmployeeId" Visible="false" />
                                        <asp:BoundField HeaderText="Emp Id" DataField="EmpId" />
                                        <asp:BoundField HeaderText="Employees First Name" DataField="FirstName" />
                                        <asp:BoundField HeaderText="Employees Last Name" DataField="LastName" />
                                        <asp:BoundField HeaderText="Email Id" DataField="EmailId" />
                                        <asp:BoundField HeaderText="Password" DataField="Password" />
                                        <asp:BoundField HeaderText="Gender" DataField="Gender" />
                                        <asp:BoundField HeaderText="Date Of Birth" DataField="Dob" />
                                        <asp:BoundField HeaderText="Department" DataField="Department" />
                                        <asp:BoundField HeaderText="Address" DataField="Address" />
                                        <asp:BoundField HeaderText="City" DataField="City" />
                                        <asp:BoundField HeaderText="Country" DataField="Country" />
                                        <asp:BoundField HeaderText="Phone Number" DataField="Phonenumber" />
                                        <asp:BoundField HeaderText="Status" DataField="Status" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="btnEdit1" OnClick="EbtnUpdate_click"> <i style="padding-right:10px;" class="fa fa-edit" > </i></asp:LinkButton>
                                                <asp:LinkButton runat="server" ID="btnDelete1" OnClick="EbtnDelete_click"> <i class="fa fa-times" > </i></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
