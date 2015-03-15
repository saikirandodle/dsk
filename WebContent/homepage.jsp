<%@ page language="java" import="java.sql.*" import="java.util.*" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org   /TR/html4/loose.dtd">
<html>
    <head>
    <!--jQuery References-->
  <script src="http://code.jquery.com/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js" type="text/javascript"></script>
 
<!-- Theme -->
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/themes/black-tie/jquery-ui.css" rel="stylesheet" type="text/css" />
 
<!-- Wijmo Widgets CSS -->
<link href="http://cdn.wijmo.com/jquery.wijmo-pro.all.3.20133.20.min.css" rel="stylesheet" type="text/css" />
 
<!-- Wijmo Widgets JavaScript -->
<script src="http://cdn.wijmo.com/jquery.wijmo-open.all.3.20133.20.min.js" type="text/javascript"></script>
<script src="http://cdn.wijmo.com/jquery.wijmo-pro.all.3.20133.20.min.js" type="text/javascript"></script> 
<!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">


    
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
      <script type="text/javascript">
		        $(function() {
		        	
		        	 $("#usersDetailsGrid").width("98%").wijgrid({ 
		                    allowColSizing: true, 
		                    allowSorting: true, 
		                    editingMode: "cell", 
		                    allowPaging: true, 
		                    pageSize: 10, 
		                    showFilter: true, 
		                    showFooter: true,
		                    selectionMode: "none",
		                    columns:[
		                             {headerText: "ID Number", width:"7%"},
		                             {headerText: "First Name", width:"8%"},
		                             {headerText: "Last Name", width:"8%"},
		                             {headerText: "Comapny", width:"10%"},
		                             {headerText: "City", width:"8%"},
		                             {headerText: "Email ID", width:"5%"},
		                             {headerText: "Date", width:"13%"},
		                             {headerText: "In Time", width:"8%"},
		                             {headerText: "Out Time", width:"8%"},
		                             {headerText: "Delete", width:"2%"}, 
		                         ] 
		                    });
		        	 $("#tabs").wijtabs(); 
		        	 $("#calendar").wijcalendar({ 
		                    //set the calendar is a pop-up calendar. 
		                    popupMode: true, 
		                    selectedDatesChanged: function () { 
		                        var selDate = $(this).wijcalendar("getSelectedDate"); 
		                        if (selDate) { 
		                            $("#popdate").val(selDate.toDateString()); 
		                        } 
		                    } 
		                }); 
		  
		                $("#popdate").click(function () { 
		                    //Pops up the calendar at specifies position. 
		                    $("#calendar").wijcalendar("popup", { 
		                        of: $("#popdate") 
		                    }); 
		                }); 
		                
		                var progressbar = $("#progressbar"); 
		                //Initializes the wijupload 
		                var upload = $("#upload").wijupload({ 
		                    multiple: true, 
		                    swfUploadOptions: { 
		                        swf: 'Wijmo/wijupload/SWFUpload.swf', 
		                        'auto': false
		                    }, 
		                    enableSWFUploadOnIE: true, 
		                    change: function (e, data) { 
		                    }, 
		                    upload: function (e, data) { 
		                    }, 
		                    totalUpload: function () { 
		                        progressbar.show(); 
		                    }, 
		                    complete: function (e, data) { 
		                    }, 
		                    //Hide the progress-bar when upload action finished. 
		                    totalComplete: function () { 
		                        progressbar.fadeOut(1500, function () { 
		                            if (supportXhr || (enableSWFUploadOnIE && $.browser.msie)) { 
		                                    $("#progressbar").wijprogressbar({ value: 0 }); 
		                            } 
		                        }); 
		                    }, 
		                    //Get the total progress of wijupload and update the progress-bar. 
		                    totalProgress: function (e, data) { 
		                        if (supportXhr || (enableSWFUploadOnIE && $.browser.msie)) { 
		                            var percent = Math.round(data.loaded * 100 / data.total); 
		                            //console.log(data.loaded +" "+ data.total) 
		                            $("#progressbar").wijprogressbar({ 
		                                maxValue: 100, 
		                                value: percent 
		                            }); 
		                        } 
		                    }, 
		                    action: "upload.ashx"
		                }); 
		                supportXhr = $("#upload").wijupload("supportXhr"); 
		                enableSWFUploadOnIE = $("#upload").wijupload("option", "enableSWFUploadOnIE"); 
		                if (supportXhr || (enableSWFUploadOnIE && $.browser.msie)) { 
		                    //  progressbar.wijprogressbar(); 
		                } else { 
		                    progressbar.addClass("Loading"); 
		                } 
		                progressbar.hide(); 
		 
		});
     </script>
     
     <style type="text/css">
     .ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight{background: silver;}
     .footer{
 background: #333;
padding: 15px;
}
.ft{color: white;
width: 100%;
font-size: 13px;}
.ht{font-size: 28px;
color: white;
}
.orange{color: orange;}
a.fcolor{color: rgb(131, 131, 131);}
a.fcolor:hover{color: orange; text-decoration: none;}
     .ui-tabs{
     padding: 0px;
 	 border: 0px;}
 	  .header{width: 100%;
border-bottom: 1px solid black;
height: 85px;
color: white;
font-family: sans-serif;
padding-top: 0px;
padding-left: 5px;
font-size: 22px;
background-color: rgb(47, 111, 153);}
.ft{color: white;
width: 100%;
font-size: 13px;}
.ht{font-size: 28px;
color: white;
}
.ui-widget .ui-widget {
font-size: 13px;
}
.ui-tabs .ui-tabs-nav{border-width: 0px;}
body {
	background-image: url("images/pattern17.png");
}
/* #tabs {
	background-image: url("images/pattern17.png");
} */
.footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:60px;   /* Height of the footer */
 }
     </style>
     
    </head>
  <body>
  <div class="header">
		<table class="ft">
		<tr>
			<td style="width: 12%;" valign="top"><img src="images/rfhlogo.png" style="height: 65px;"></td>
			<td style="padding-top: 14px;" valign="center" class="ht"> <!-- <img src="images/vmtitle.png" style="height: 70px;"> -->Visitor Management</td>		
 		</tr>
	</table>
</div>
		 	<div id="tabs"> 
                <ul> 
                    <li><a href="#tabs-1">Enter Details</a></li> 
                    <li><a href="#tabs-2">View Details</a></li> 
                    <li><a href="#tabs-3">Update Details</a></li> 
                </ul> 
                <div id="tabs-1" style="width: 28%;"> 
                    <form action="enterdetails" method="post">
						 <h4 class="form-signin-heading">Please Enter Details</h4>
						<table style="width: 90%;"> 
						<tr> 
 				 		 <td>
							<input type="text" class="form-control" name="id" placeholder="1" required autofocus>
						</td>
						</tr>
						<tr> 
 				 		 <td>
							<input type="text" class="form-control" name="fname" placeholder="First Name" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="lname" placeholder="Last Name" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="lname" placeholder="Last Name" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<select>
								  <option value="volvo">Referal</option>
								  <option value="saab">Campus</option>
								  <option value="mercedes">Reference</option>
 							</select>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="city" placeholder="Contact 2" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Email ID 1" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Email ID 2" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Present Location" required autofocus>
						</td>
						</tr>
						  
						<tr> 
 				 		 <td>
							  <div id="calendar"> </div> 
						     <!--  <label style="font-size: 12px;" for="popdate">Choose a Date:</label>  -->
						      <input class="form-control" name="popdate" type="text" id="popdate"  placeholder="Date of joining"  required autofocus /> 
						</td>
						</tr>
						   <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Follow-up 1" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Follow-up 2" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<input type="text" class="form-control" name="emailid" placeholder="Follow-up 3" required autofocus>
						</td>
						</tr>
						 <tr> 
 				 		 <td>
							<div id="upload" style="width: 300px"></div> 
				            <div id="progressbar"></div> 
						</td>
						</tr>
						 <tr> 
 				 		 <td align="center">
							 <button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">Save Details</button>
						</td>
						</tr>
						</table>
						
					 </form>
                </div> 
                <div id="tabs-2" style="padding: 0px;"> 
                    	 <h4 class="form-signin-heading">View Visitor Details</h4>
                    	<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0" style="height: 360px;overflow: auto;"> 
                    	<tr>
    <td align="left" valign="top" >
    <% 
/* session=request.getSession(true); 
String user=(String)session.getAttribute("userid");
String bfno=null;  */
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection	con = DriverManager.getConnection("jdbc:mysql://localhost/visitor","visitor","visitor");
   System.out.println("connection established");
   
   Statement st=con.createStatement(); 
   st.executeQuery("select * from users;");
   Statement st1=con.createStatement();
   ResultSet rs1=st1.executeQuery("select * from users;");
 
 
 	
 	%>
       <table border=".5" id="usersDetailsGrid" width="100%" >
      <% 
    ResultSet rs=st.executeQuery("select * from users;");
     while(rs.next()) 
 	{
 	
  	%>
 	 
        <tr>
         
        <td align="center"><%=rs.getInt(1) %></td>
        <td align="center"><%=rs.getString(2) %></td>
        <td align="center"><%=rs.getString(3) %></td>
        <td align="center"><%=rs.getString(4) %></td>
        <td align="center"><%=rs.getString(5) %></td>
        <td align="center"><%=rs.getString(6) %></td>
        <td nowrap="nowrap" align="center"><%=rs.getString(7) %></td>
        <td align="center"><%=rs.getString(8) %></td>
        <td align="center"><%=rs.getString(9) %></td>
         <td align="center"><img src="images/button_delete_red.png" style="height: 18px;"></td>
        </tr>
        
     <%} 
     
  %>  
		</table>
        
        <%}
         catch(Exception e){
System.out.println(e);
} %>
	</td></tr>
</table>
                 </div> 
                <div id="tabs-3"> 
                     
                </div> 
            </div> 
            
 <div class="footer">
	<table class="ft">
		<tr>
			<td style="white-space:nowrap;">© Copyright 2001-2011 Copyright .in - All Rights Reserved</td>
			<td nowrap="nowrap" width="25%"></td>
			<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">ABOUT</a></td>
			<td class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
			<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">BLOG</a></td>	
			<td  class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>	
			<td style="white-space:nowrap;" width="1px"><a href="#" class="fcolor">NEWS & EVENTS</a></td>
			<td  class="orange" width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
			<td nowrap="nowrap" width="1px"><a href="#" class="fcolor">CONTACT</a></td>
			<td  class="orange"width="1px">&nbsp;&nbsp;|&nbsp;&nbsp;</td>
			<td nowrap="nowrap" width="70%"><a href="#" class="fcolor">SITEMAP</a></td>
		 	
			<td align="right"><a href="#"><img src="images/facebook_circle_color-128.png" style="height: 40px;"></a></td>
			<td>&nbsp;&nbsp;</td>
			<td align="left"><a href="#"><img src="images/twitter_circle_color-128.png" style="height: 40px;"></a></td>
		</tr>
	</table>
</div>
   </body>
</html>