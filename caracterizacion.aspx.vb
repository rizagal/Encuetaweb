Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Net

Public Class caracterizacion
    Inherits System.Web.UI.Page

    Private Shared sector As String = "N/D"


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Page.IsPostBack Then
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "cargar_droplist", "cargar_droplist()", True)
        End If
    End Sub

    Private Sub Button_guardar_pretest_Click(sender As Object, e As EventArgs) Handles Button_guardar_pretest.Click

        If TextBox_dirrecion.Text = "" Or TextBox_apellidos.Text = "" Then
            Label_verifica_pretest.Text = "Por favor Diligenciar Todos los campos del Encuesta de Caracterizacion"
        Else
            Label_verifica_pretest.Text = ""
            Using conn As New SqlConnection("Data Source=NOMBRESERVIDOR;Initial Catalog=BASEDEDATOS;Persist Security Info=True;USUARIOBASE;Password=CONTRASEÑABASE")
                conn.Open()

                Dim query As String = "INSERT INTO encuesta_caracterizacion (usuario_ingresa, num_identifica, tipo_identifica, nombres, apellidos, genero, eapb, direccion, comuna, barrio, telefonofijo, num_celular, correo_electronico, edad, etnia, ocupacion, estudios_ultimo_ano, estado_civil, familiada_conformada0a11, familiada_conformada12a17, familiada_conformada18a28, familiada_conformada29a64, familiada_conformada65ymas, estrato, viviendaes, salario_ingreso, medio_seinforma, medio_conectarse, condicion_actual, conoce_deberesyderechos, indique_deberesyderechos, sabesasociacionsalud, legustariasociacionusuario, conocelaredladera, servicioutilizado, frecuenciautilizaservicios, serviciosmasconsulta, mediotransporteacudirips, manerasolicitaservicios, calificalosservicios, aspectosamejorar, recomendarialoservicios, visitadopaginawebladera, autorizainformacionportafolio, autorizacontactarloconfirmaveracidad, ippc)"
                Dim query1 As String = " VALUES (@usuario_ingresa, @num_identifica, @tipo_identifica, @nombres, @apellidos, @genero, @eapb, @direccion, @comuna, @barrio, @telefonofijo, @num_celular, @correo_electronico, @edad, @etnia, @ocupacion, @estudios_ultimo_ano, @estado_civil, @familiada_conformada0a11, @familiada_conformada12a17, @familiada_conformada18a28, @familiada_conformada29a64, @familiada_conformada65ymas, @estrato, @viviendaes, @salario_ingreso, @medio_seinforma, @medio_conectarse, @condicion_actual, @conoce_deberesyderechos, @indique_deberesyderechos, @sabesasociacionsalud, @legustariasociacionusuario, @conocelaredladera, @servicioutilizado, @frecuenciautilizaservicios, @serviciosmasconsulta, @mediotransporteacudirips, @manerasolicitaservicios, @calificalosservicios, @aspectosamejorar, @recomendarialoservicios, @visitadopaginawebladera, @autorizainformacionportafolio, @autorizacontactarloconfirmaveracidad, @ippc)"
                Dim query3 As String = query + query1
                Dim cmd As New SqlCommand(query3, conn)
                cmd.Parameters.Clear()
                cmd.Parameters.Add("@usuario_ingresa", SqlDbType.NVarChar).Value = "Usuario"
                cmd.Parameters.Add("@num_identifica", SqlDbType.NVarChar).Value = TextBox_numidenti.Text
                cmd.Parameters.Add("@tipo_identifica", SqlDbType.Int).Value = DropDownList_tip_documento.Text
                cmd.Parameters.Add("@nombres", SqlDbType.NVarChar).Value = TextBoxnombres.Text
                cmd.Parameters.Add("@apellidos", SqlDbType.NVarChar).Value = TextBox_apellidos.Text
                cmd.Parameters.Add("@genero", SqlDbType.NVarChar).Value = DropDownList_genero.Text
                cmd.Parameters.Add("@eapb", SqlDbType.NVarChar).Value = DropDownList_eapb.Text
                cmd.Parameters.Add("@direccion", SqlDbType.NVarChar).Value = TextBox_dirrecion.Text
                cmd.Parameters.Add("@comuna", SqlDbType.NVarChar).Value = TextBox_comuna.Text
                cmd.Parameters.Add("@barrio", SqlDbType.NVarChar).Value = DropDownList_barrio.Text
                cmd.Parameters.Add("@telefonofijo", SqlDbType.NVarChar).Value = TextBox_telefono.Text
                cmd.Parameters.Add("@num_celular", SqlDbType.NVarChar).Value = TextBox_celular.Text
                cmd.Parameters.Add("@correo_electronico", SqlDbType.NVarChar).Value = TextBox_correo.Text
                cmd.Parameters.Add("@edad", SqlDbType.NVarChar).Value = TextBox_edad_persona.Text
                cmd.Parameters.Add("@etnia", SqlDbType.NVarChar).Value = DropDownList_etnia.Text
                Dim idsSeleccionados As String = String.Empty
                For Each item As ListItem In CheckBoxList_ocupacion.Items
                    If item.Selected Then
                        idsSeleccionados += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@ocupacion", SqlDbType.NVarChar).Value = idsSeleccionados
                cmd.Parameters.Add("@estudios_ultimo_ano", SqlDbType.NVarChar).Value = DropDownList_ultimoano.Text
                cmd.Parameters.Add("@estado_civil", SqlDbType.NVarChar).Value = DropDownList_estado_civil.Text
                cmd.Parameters.Add("@familiada_conformada0a11", SqlDbType.Int).Value = TextBox_fam_0a11.Text
                cmd.Parameters.Add("@familiada_conformada12a17", SqlDbType.Int).Value = TextBox_fam_12a17.Text
                cmd.Parameters.Add("@familiada_conformada18a28", SqlDbType.Int).Value = TextBox_fam_18a28.Text
                cmd.Parameters.Add("@familiada_conformada29a64", SqlDbType.Int).Value = TextBox_fam_29a64.Text
                cmd.Parameters.Add("@familiada_conformada65ymas", SqlDbType.Int).Value = TextBox_fam_65ymas.Text
                cmd.Parameters.Add("@estrato", SqlDbType.NVarChar).Value = DropDownList_estrato.Text
                cmd.Parameters.Add("@viviendaes", SqlDbType.NVarChar).Value = DropDownList_lavivienda.Text
                cmd.Parameters.Add("@salario_ingreso", SqlDbType.NVarChar).Value = DropDownList_salario.Text
                Dim itemseleccionadoseinforma As String = String.Empty
                For Each item As ListItem In CheckBoxList_medio_seinforma.Items
                    If item.Selected Then
                        itemseleccionadoseinforma += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@medio_seinforma", SqlDbType.NVarChar).Value = itemseleccionadoseinforma
                Dim itemseleccionadomedioconecta As String = String.Empty
                For Each item As ListItem In CheckBoxList_medio_conectarse.Items
                    If item.Selected Then
                        itemseleccionadomedioconecta += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@medio_conectarse", SqlDbType.NVarChar).Value = itemseleccionadomedioconecta
                cmd.Parameters.Add("@condicion_actual", SqlDbType.NVarChar).Value = DropDownList_condicionactual.Text
                cmd.Parameters.Add("@conoce_deberesyderechos", SqlDbType.NVarChar).Value = RadioButtonList_deberesyderechos.Text
                cmd.Parameters.Add("@indique_deberesyderechos", SqlDbType.NVarChar).Value = TextBox_indiquedeberyderecho.Text
                cmd.Parameters.Add("@sabesasociacionsalud", SqlDbType.NVarChar).Value = RadioButtonList_sabesasociacionsalud.Text
                cmd.Parameters.Add("@legustariasociacionusuario", SqlDbType.NVarChar).Value = RadioButtonList_legustariasociacionusuario.Text
                cmd.Parameters.Add("@conocelaredladera", SqlDbType.NVarChar).Value = RadioButtonList_conocelaredladera.Text
                Dim itemservicioutilizado As String = String.Empty
                For Each item As ListItem In CheckBoxList_servicioutilizado.Items
                    If item.Selected Then
                        itemservicioutilizado += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@servicioutilizado", SqlDbType.NVarChar).Value = itemservicioutilizado
                cmd.Parameters.Add("@frecuenciautilizaservicios", SqlDbType.NVarChar).Value = DropDownList_frecuenciautilizaservicios.Text
                Dim itemserviciosmasconsulta As String = String.Empty
                For Each item As ListItem In CheckBoxList_serviciosmasconsulta.Items
                    If item.Selected Then
                        itemserviciosmasconsulta += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@serviciosmasconsulta", SqlDbType.NVarChar).Value = itemserviciosmasconsulta
                Dim itemmediotransporteacudirips As String = String.Empty
                For Each item As ListItem In CheckBoxList_mediotransporteacudirips.Items
                    If item.Selected Then
                        itemmediotransporteacudirips += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@mediotransporteacudirips", SqlDbType.NVarChar).Value = itemmediotransporteacudirips
                Dim itemmanerasolicitaservicios As String = String.Empty
                For Each item As ListItem In CheckBoxList_manerasolicitaservicios.Items
                    If item.Selected Then
                        itemmanerasolicitaservicios += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@manerasolicitaservicios", SqlDbType.NVarChar).Value = itemmanerasolicitaservicios
                cmd.Parameters.Add("@calificalosservicios", SqlDbType.NVarChar).Value = DropDownList_calificalosservicios.Text
                Dim itemaspectosamejorar As String = String.Empty
                For Each item As ListItem In CheckBoxList_aspectosamejorar.Items
                    If item.Selected Then
                        itemaspectosamejorar += item.Value.ToString() & ","
                    End If
                Next
                cmd.Parameters.Add("@aspectosamejorar", SqlDbType.NVarChar).Value = itemaspectosamejorar
                cmd.Parameters.Add("@recomendarialoservicios", SqlDbType.NVarChar).Value = RadioButtonList_recomendarialoservicios.Text
                cmd.Parameters.Add("@visitadopaginawebladera", SqlDbType.NVarChar).Value = RadioButtonList_visitadopaginawebladera.Text
                cmd.Parameters.Add("@autorizainformacionportafolio", SqlDbType.NVarChar).Value = RadioButtonList_autorizainformacionportafolio.Text
                cmd.Parameters.Add("@autorizacontactarloconfirmaveracidad", SqlDbType.NVarChar).Value = RadioButtonList_autorizacontactarloconfirmaveracidad.Text
                'Capturar IP del PC
                Dim Ipaddr As String = String.Empty
                Ipaddr = HttpContext.Current.Request.UserHostAddress
                cmd.Parameters.Add("@ippc", SqlDbType.NVarChar).Value = Ipaddr

                cmd.ExecuteNonQuery()
            End Using


            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "swal_encuesta_guardada", "swal_encuesta_guardada()", True)


            ''Cuando se llama el método limpiar se pasa como parámetro 
            ''la colección de controles de la página Web.
            CleanControls(Me.Controls)


        End If
    End Sub

    Protected Sub TextBox_numidenti_TextChanged(sender As Object, e As EventArgs) Handles TextBox_numidenti.TextChanged

        Dim num_comuna As String
        Dim lector1 As SqlDataReader
        Dim comando1 As SqlCommand
        'INICIALIZAMOS LA CONEXION Y EL OBJETO COMMAND
        Dim miConexion = New SqlConnection
        comando1 = New SqlCommand
        'ABRIMOS LA CONEXION
        miConexion.ConnectionString = ConfigurationManager.ConnectionStrings("visualnetConnectionString").ConnectionString
        miConexion.Open()
        'ASIGNAMOS LA CONEXION Y LA SENTENCIA AL OBJETO COMMAND
        comando1.Connection = miConexion

        comando1.CommandText = "Select TOP(1) * from fac_m_tarjetero where RTRIM(numdocum) = '" & TextBox_numidenti.Text & "'"
        lector1 = comando1.ExecuteReader
        'SI EL LECTOR DEVUELVE TRUE AL LEER ES QUE TIENE REGISTROS
        If lector1.Read() Then
            TextBoxnombres.Text = lector1.Item("apellido1") & " " & lector1.Item("apellido2")
            TextBox_apellidos.Text = lector1.Item("nombre1") & " " & lector1.Item("nombre2")
            DropDownList_tip_documento.Text = lector1.Item("tipdocum")
            TextBox_dirrecion.Text = lector1.Item("direcres")
            num_comuna = Trim(lector1.Item("codbares"))
            TextBox_comuna.Text = Left(num_comuna, 2)
            DropDownList_barrio.Text = Trim(lector1.Item("nombre_barrio"))

            If lector1.Item("nombre_eapb") Is DBNull.Value Then
                'capturo el campo codbares y luego obtengo los dos primeros caracteres-----------------------------
                DropDownList_eapb.Text = "No Reporto"
            Else
                'capturo el campo codbares y luego obtengo los dos primeros caracteres-----------------------------
                DropDownList_eapb.Text = Trim(lector1.Item("nombre_eapb"))
            End If
            'Calculo Edad exacta de la siguiente forma Text1 = a & " Años y " & m & " meses."--------------------------------------------------
            'www.foro.vb-mundo.com/f24/calculo-exacto-de-edad-7456/
            Dim t As Single
            Dim a As Integer, m As Integer
            t = DateDiff("m", Trim(lector1.Item("fechanac")), Now) / 12
            a = Int(t)
            t = (t - a) * 12
            m = Int(t)
            TextBox_edad_persona.Text = a
            TextBox_celular.Text = lector1.Item("telefres")
            DropDownList_genero.Text = lector1.Item("sexo")


        Else
            TextBoxnombres.Text = ""
            TextBox_apellidos.Text = ""
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "swal_paciente_noenbd", "swal_paciente_noenbd()", True)
            ''Cuando se llama el método limpiar se pasa como parámetro 
            ''la colección de controles de la página Web.
            CleanControls(Me.Controls)
        End If
        lector1.Close()
        comando1 = Nothing
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "cargar_droplist", "cargar_droplist()", True)
    End Sub

    Private Sub caracterizacion_Init(sender As Object, e As EventArgs) Handles Me.Init
        'ScriptManager.RegisterStartupScript(Me, Me.GetType(), "cargar_droplist", "cargar_droplist()", True)
    End Sub

    Private Sub DropDownList_estado_civil_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList_estado_civil.SelectedIndexChanged
        TextBoxnombres.Text = "hola"
    End Sub

    Private Sub DropDownList_estado_civil_TextChanged(sender As Object, e As EventArgs) Handles DropDownList_estado_civil.TextChanged
        TextBoxnombres.Text = "hola"
    End Sub

    ''Función que permite limpiar todos los controles de una página Web
    ''recursivamente. Útil cuando en la página existen varios controles
    ''evita tener que limpiar uno por uno. 
    Public Sub CleanControls(ByVal controles As ControlCollection)
        For Each control As Control In controles
            If TypeOf control Is TextBox Then
                DirectCast(control, TextBox).Text = String.Empty
            ElseIf TypeOf control Is DropDownList Then
                DirectCast(control, DropDownList).ClearSelection()
            ElseIf TypeOf control Is RadioButtonList Then
                DirectCast(control, RadioButtonList).ClearSelection()
            ElseIf TypeOf control Is CheckBoxList Then
                DirectCast(control, CheckBoxList).ClearSelection()
            ElseIf TypeOf control Is RadioButton Then
                DirectCast(control, RadioButton).Checked = False
            ElseIf TypeOf control Is CheckBox Then
                DirectCast(control, CheckBox).Checked = False
            ElseIf control.HasControls() Then
                CleanControls(control.Controls)
            End If
        Next
    End Sub



End Class