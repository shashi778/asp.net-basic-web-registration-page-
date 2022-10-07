<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web_REG.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style3 {
            height: 26px;
            width: 390px;
        }
        .auto-style4 {
            width: 390px;
            margin-left: 120px;
        }
        .auto-style5 {
            width: 390px;
        }
        .auto-style7 {
            height: 704px;
            width: 1026px;
        }
       
                           
        
        .auto-style8 {
            width: 92px;
        }
        .auto-style9 {
            height: 26px;
            width: 92px;
        }
        </style>
</head>
    
<body style="height: 546px; width:975px; margin-top: auto">
    <form id="REG" runat="server" >
    <div class="auto-style7">
        <table align="center">
                      <tr>
                <td class="auto-style8">Name</td>
                <td class="auto-style5"> <asp:TextBox ID="NameE" runat="server" placeholder="Enter name"   ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NameE" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*Name is requried</asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style8">Adress</td>
                <td class="auto-style5"> <asp:TextBox ID="addr" 6 runat="server" placeholder="Enter address"   ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="addr" Display="Dynamic" ErrorMessage="addresss is mandatory" ForeColor="Red">* addresss is mandatory</asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td class="auto-style8">Gender</td>
                <td class="auto-style4"> <asp:RadioButton groupname="gender" ID="male" runat="server" text="Male"   /><br />
                    <asp:RadioButton groupname="gender" ID="female" runat="server" text="FeMale" /><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Phone</td>
                <td class="auto-style3"> <asp:TextBox ID="phoneN" runat="server" placeholder="Enter phone number"  onkeypress ="return this.value.length<=10"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phoneN"   Display="Dynamic" ErrorMessage="phone num is mandatory" ForeColor="Red">* phone num is mandatory</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Email</td>
                <td class="auto-style3"> <asp:TextBox ID="emailE" runat="server" placeholder="Enter email" TextMode="Email"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailE" Display="Dynamic" ErrorMessage="email is mandatory" ForeColor="Red">* email is mandatory</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Experience</td>
                <td class="auto-style3"> 
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">--please select --</asp:ListItem>
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Username</td>
                <td class="auto-style5"> <asp:TextBox ID="usernameU" runat="server" placeholder="Enter username"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="usernameU" Display="Dynamic" ErrorMessage="username is mandatory" ForeColor="Red">* username is mandatory</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style5"> <asp:TextBox ID="passwordP" runat="server" placeholder="Enter password"  TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="passwordP" Display="Dynamic" ErrorMessage="password is mandatory" ForeColor="Red">* password is mandatory</asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
               <td class="auto-style8">
                   <asp:Button ID="Button2" runat="server" Text="Submit" UseSubmitBehavior="false"  ClientIDMode="Static"  OnClick="Button2_Click"/></td>
            </tr>
           </table>
        <br />
&nbsp;&nbsp;
        
        

        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="eperience" HeaderText="eperience" SortExpression="eperience" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
           
           
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_REGConnectionString %>" SelectCommand="SELECT * FROM [Table_1]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSources" runat="server" ConnectionString="<%$ ConnectionStrings:WEB_REGConnectionString %>" SelectCommand="SELECT [Name], [address], [gender], [email], [eperience], [phone], [username], [password] FROM [Table_1]"></asp:SqlDataSource>
        </div>
   </form>
    <br />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js" ></script>
    <script src="Scripts/jquery.validate.min.js"></script>    
    <script type ="text/javascript" >                
        $(document).ready(function () {
            $('#targets').submit(function () {
            $("#REG").validate({
                rules: {
                    
                    <%=addr.UniqueID %>:{  
                        required:true  
            },   
                 <%=NameE.UniqueID %>: {
                    required: true
                }
                },  

                      messages:{  
                     
                      <%=addr.UniqueID %>:{
                         required: "Address is required."
        },  
                      <%=NameE.UniqueID %>: {
                required: "name is required."
            },  
                },  
            });  
        });
    </script>
     </body>
</html>
