Partial Class HomePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim userRole As String = TryCast(Session("UserRole"), String)

        If String.IsNullOrEmpty(userRole) Then
            Response.Redirect("Login.aspx")
        Else
            ConfigureUIBasedOnRole(userRole)
        End If
    End Sub

    Private Sub ConfigureUIBasedOnRole(ByVal role As String)
        Select Case role
            Case "Admin"
                AdminPanel.Visible = True
                UserPanel.Visible = False
                GuestPanel.Visible = False
            Case "User"
                AdminPanel.Visible = False
                UserPanel.Visible = True
                GuestPanel.Visible = False
            Case "Guest"
                AdminPanel.Visible = False
                UserPanel.Visible = False
                GuestPanel.Visible = True
            Case Else
                AdminPanel.Visible = False
                UserPanel.Visible = False
                GuestPanel.Visible = False
        End Select
    End Sub
End Class
