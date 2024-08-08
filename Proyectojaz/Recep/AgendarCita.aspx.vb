Imports System.Data.SqlClient

Public Class AgendarCita
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarClientes()
        End If
    End Sub

    Private Sub CargarClientes()
        Dim connectionString As String = "Server=VIRUXFIVE\SQLEXPRESS;Database=CFP;User Id=sa;Password=12345678;"
        Dim query As String = "SELECT IdCliente, Nombre FROM Clientes"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()
                ddlCliente.DataSource = reader
                ddlCliente.DataTextField = "Nombre"
                ddlCliente.DataValueField = "IdCliente"
                ddlCliente.DataBind()
                ddlCliente.Items.Insert(0, New ListItem("Seleccione un Cliente", String.Empty))
            End Using
        End Using
    End Sub

    Protected Sub btnGuardar_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim clienteId As String = ddlCliente.SelectedValue
        Dim fecha As String = txtFecha.Text.Trim()
        Dim hora As String = txtHora.Text.Trim()

        If String.IsNullOrEmpty(clienteId) Or String.IsNullOrEmpty(fecha) Or String.IsNullOrEmpty(hora) Then
            ' Mensaje de error si es necesario
            Return
        End If

        Dim connectionString As String = "Server=VIRUXFIVE\SQLEXPRESS;Database=CFP;User Id=sa;Password=12345678;"
        Dim query As String = "INSERT INTO Citas (Fecha, Hora, idCliente) VALUES (@Fecha, @Hora, @IdCliente)"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Fecha", fecha)
                command.Parameters.AddWithValue("@Hora", hora)
                command.Parameters.AddWithValue("@IdCliente", clienteId)
                connection.Open()
                command.ExecuteNonQuery()
            End Using
        End Using

        ' Limpiar el formulario o redirigir a otra página si es necesario
        txtFecha.Text = String.Empty
        txtHora.Text = String.Empty
        ddlCliente.SelectedIndex = 0
    End Sub
End Class
