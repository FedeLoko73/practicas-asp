Public Partial Class Alta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub txtNombre_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txtNombre.TextChanged
        
    End Sub

    Protected Sub txtApellido_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txtApellido.TextChanged
        Dim strApellido
        strApellido = Me.txtApellido.Text
        Me.lblMensaje.Text = strApellido

    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txthoras.TextChanged

    End Sub
End Class