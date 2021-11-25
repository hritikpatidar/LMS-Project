<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="ManageCustomer.aspx.cs" Inherits="ManageCustomer" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                MANAGE CUSTOMER</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DISPLAY CUSTOMER TABLE
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form id="Form1" role="form" runat="server">
                            <asp:GridView ID="GrdDept" CssClass="table table-striped table-bordered table-hover"
                                runat="server" DataKeyNames="CUSTOMERID" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                     <ItemTemplate>
                                                <%# Container.DataItemIndex + 1 %>
                                     </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Customer Id" DataField="CUSTOMERID"  />
                                    <asp:BoundField HeaderText="Customer Name" DataField="CUSTOMERNAME" />
                                    <asp:BoundField HeaderText="Address" DataField="ADDRESS" />
                                    <asp:BoundField HeaderText="City" DataField="CITY" />
                                    <asp:BoundField HeaderText="Country" DataField="COUNTRY" />
                                    
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton runat="server" ID="btnEdit" OnClick="MbtnUpdate_click"  > <i style="padding-right:10px;" class="fa fa-edit" > </i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="btnDelete" OnClick="MbtnDelete_click"  > <i class="fa fa-times" > </i></asp:LinkButton>
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

