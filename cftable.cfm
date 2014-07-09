<!--- comment --->
<cfquery name = "GetEmployees" dataSource = "cfdocexamples">
    SELECT Emp_ID, FirstName, LastName, EMail, Phone, Department
    FROM Employees
</cfquery>


<cftable query = "GetEmployees" startRow = "1" colSpacing = "3" HTMLTable colheaders>
    <cfcol header = "<b>ID</b>" align = "Left" width = 2 text= "#Emp_ID#">
    <cfcol header = "<b>Name/Email</b>" align = "Left" width = 15 text= "<a href = 'mailto:#Email#'>#FirstName# #LastName#</A>">
    <cfcol header = "<b>Phone Number</b>" align = "Center" width = 15 text= "#Phone#">
</cftable>