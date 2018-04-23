Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxUploadControl
Imports DevExpress.Web.ASPxClasses

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub
	Protected Sub ASPxUploadControl1_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
		Dim fileName As String = e.UploadedFile.FileName
		Dim virtPath As String = "~/Video/dx/" & fileName
		Dim filePath As String = Page.MapPath(virtPath)
		e.UploadedFile.SaveAs(filePath)
		e.CallbackData = virtPath
	End Sub
	Protected Sub ASPxCallbackPanel1_Callback(ByVal sender As Object, ByVal e As CallbackEventArgsBase)
		objectContainer.ObjectType = DevExpress.Web.ASPxObjectContainer.ObjectType.Video
		objectContainer.ObjectUrl = e.Parameter
	End Sub
End Class
