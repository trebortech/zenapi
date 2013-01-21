set objHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")

Function apiLogin(username, password, url)

	objHTTP.Open "POST", url, False	
	objHTTP.SetRequestHeader "Content-Type", "application/x-www-form-urlencoded"
	
	sPost = "came_from=" & fromURL
	sPost = sPost & "&submitted=true"
	sPost = sPost & "&__ac_name=" & username
	sPost = sPost & "&__ac_password=" & password
	
	objHTTP.send(sPost)

End Function

Function sendEvent(url, errMessage, deviceID, strComponent, sev, evtClass, evtClassKey)

	objHTTP.OPEN "POST", , False
	objHTTP.SetRequestHeader "Content-Type", "application/json"

	sPost = "{" & chr(34) & "action" & chr(34) & ":" & chr(34) & "EventsRouter" & chr(34) & ","
	sPost = sPost & chr(34) & "method" & chr(34) & ":" & chr(34) & "add_event" & chr(34) & ","
	sPost = sPost & chr(34) & "data" & chr(34) & ":[{"
	sPost = sPost & chr(34) & "summary" & chr(34) & ":" & chr(34) & errMessage & chr(34) & ","
	sPost = sPost & chr(34) & "device" & chr(34) & ":" & chr(34) & deviceID & chr(34) & ","
	sPost = sPost & chr(34) & "component" & chr(34) & ":" & chr(34) & strComponent & chr(34) & "," 
	sPost = sPost & chr(34) & "severity" & chr(34) & ":" & sev & ","
	sPost = sPost & chr(34) & "evclasskey" & chr(34) & ":" & chr(34) & evtClassKey & chr(34) & ","
	sPost = sPost & chr(34) & "evclass" & chr(34) & ":" & chr(34) & evtClass & chr(34) & "}],"
	sPost = sPost & chr(34) & "type" & chr(34) & ":" & chr(34) & "rpc" & chr(34) & ","
	sPost = sPost & chr(34) & "tid" & chr(34) & ":" & chr(34) & "2" & chr(34) & "}"
	

	objHTTP.send(sPost)

	logFile.write(objHTTP.ResponseText)
End Function


