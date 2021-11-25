<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ManageLeave.aspx.cs" Inherits="ManageLeave" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                MANAGE LEAVE</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DIAPLAY LEAVE TABLE
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="Form1" role="form" runat="server">
                            <asp:GridView ID="GrdDept" CssClass="table table-striped table-bordered table-hover"
                                runat="server" DataKeyNames="id" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <%# Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="id" DataField="id" Visible="false" />
                                    <asp:BoundField HeaderText="Leave Type" DataField="LeaveType" />
                                    <asp:BoundField HeaderText="To Date" DataField="ToDate" />
                                    <asp:BoundField HeaderText="From Date" DataField="FromDate" />
                                    <asp:BoundField HeaderText="Description" DataField="Description" />
                                 
                                    <asp:BoundField HeaderText="Emp Id" DataField="empId" />
                                   
                                   
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="btnEdit1" OnClick="LbtnUpdate_click" > <i style="padding-right:10px;" class="fa fa-edit" > </i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="btnDelete1" OnClick="LbtnDelete_click" > <i class="fa fa-times" > </i></asp:LinkButton>
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

