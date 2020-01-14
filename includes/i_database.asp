<%
	const xSQLProvider	=	"MSDASQL"
	const xSQLDriver	=	"{SQL Server}"
	const xSQLServer	=	"257.257.257.257"
	const xDatabase		=	"myDB"
	const xSQLUser		=	"myUSR"
	const xSQLPwd		=	"myPWD"

	'Dim connectionString
	connectionString = ""
	connectionString = connectionString & "  PROVIDER=" & xSQLProvider
	connectionString = connectionString & "; DRIVER=" & xSQLDriver
	connectionString = connectionString & "; SERVER=" & xSQLServer
	connectionString = connectionString & "; DATABASE=" & xDatabase
	connectionString = connectionString & "; UID=" & xSQLUser
	connectionString = connectionString & "; PWD=" & xSQLPwd
	

'******************************************************
' Open Connection
'******************************************************
Sub getConnection (connection)
	Set Connection = Server.CreateObject("ADODB.Connection")
		Connection.Open connectionString	
end Sub


'******************************************************
' Close Connection
'******************************************************
Sub closeConnection (connection)
	on error resume next
	connection.close
	set connection=nothing 
End sub


'******************************************************
' Close Recordset
'******************************************************
Sub closeRecordset (recordset)
	on error resume next
	recordset.close
	set recordset=nothing
End sub

%>