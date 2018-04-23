<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v9.3, Version=9.3.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxObjectContainer" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v9.3, Version=9.3.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v9.3, Version=9.3.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxCallbackPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v9.3, Version=9.3.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Upload and show the video file</title>
	<script type="text/javascript">
		function OnUploadComplete(args) {
			callbackPanel.PerformCallback(args.callbackData);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>

		<dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" OnFileUploadComplete="ASPxUploadControl1_FileUploadComplete"
			ShowUploadButton="True">
			<ClientSideEvents FileUploadComplete="function(s, e) { OnUploadComplete(e); }" />
		</dx:ASPxUploadControl>

		<dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" 
			ClientInstanceName="callbackPanel" runat="server" Width="200px" 
			oncallback="ASPxCallbackPanel1_Callback">
			<PanelCollection>
				<dx:PanelContent runat="server">
					<dx:ASPxObjectContainer ID="objectContainer" Width="297px" Height="192px" runat="server">
					</dx:ASPxObjectContainer>
				</dx:PanelContent>
			</PanelCollection>
		</dx:ASPxCallbackPanel>

	</div>

	</form>
</body>
</html>