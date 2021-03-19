<%@ Page Title="New User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="WebAppGeneral.NewUser" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Fill out form</h3>
    <p>
        <asp:Label ID="firstNameLabel" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="firstNameTb" runat="server" Height="23px" Width="134px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lastNameLabel" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="lastNameTb" runat="server" Height="23px" Width="134px" Wrap="False"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="phoneNumberLabel0" runat="server" Text="Phone Number"></asp:Label>
        <asp:TextBox ID="phoneNumberTb" runat="server" Height="23px" Width="134px" Wrap="False"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="emailLabel" runat="server" Text="Email Address"></asp:Label>
        <asp:TextBox ID="emailTb" runat="server" Height="23px" Width="134px" Wrap="False"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="enterPictureLabel" runat="server" Text="Upload Profile Picture"></asp:Label>
        <asp:FileUpload ID="uploadPicture" runat="server" Width="241px" />
        <asp:Button ID="submitBtn" runat="server" Height="28px" OnClick="submitBtn_Click" Text="Submit" />
    </p>
</asp:Content>
