<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ManageDepartment.aspx.cs"
    Inherits="ManageDepartment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                MANAGE DEPARTMENT</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DISPLAY DEPARTMENT TABLE
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="Form1" role="form" runat="server">
                            <asp:GridView ID="GrdDept" CssClass="table table-striped table-bordered table-hover"
                                runat="server" DataKeyNames="DepartmentId" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                     <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                     </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Department Id" DataField="DepartmentId" Visible="false" />
                                    <asp:BoundField HeaderText="Department Name" DataField="DepartmentName" />
                                    <asp:BoundField HeaderText="Department Short Name" DataField="DepartmentShortName" />
                                    <asp:BoundField HeaderText="Department Code" DataField="DepartmentCode" />
                                    
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="btnEdit" OnClick="btnUpdate_click" > <i style="padding-right:10px;" class="fa fa-edit" > </i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="btnDelete" OnClick="btnDelete_click" > <i class="fa fa-times" > </i></asp:LinkButton>
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
</asp:Content>
