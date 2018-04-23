using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxUploadControl;
using DevExpress.Web.ASPxClasses;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxUploadControl1_FileUploadComplete(object sender, FileUploadCompleteEventArgs e) {
        string fileName = e.UploadedFile.FileName;
        string virtPath = "~/Video/dx/" + fileName;
        string filePath = Page.MapPath(virtPath);
        e.UploadedFile.SaveAs(filePath);
        e.CallbackData = virtPath;
    }
    protected void ASPxCallbackPanel1_Callback(object sender, CallbackEventArgsBase e) {
        objectContainer.ObjectType = DevExpress.Web.ASPxObjectContainer.ObjectType.Video;
        objectContainer.ObjectUrl = e.Parameter;
    }
}
