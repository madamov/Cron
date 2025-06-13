//%attributes = {}
#DECLARE($oParameter : Object)

If ($oParameter#Null:C1517)
	If ($oParameter.sampleID#Null:C1517)
		// do something with the box
		$oParameter.result:="Everything OK with box "+$oParameter.sampleID
	End if 
End if 

Use (Storage:C1525)
	
	If (Storage:C1525.Cron=Null:C1517)
		Storage:C1525.Cron:=New shared object:C1526
	End if 
	
	If (Storage:C1525.Cron.Log=Null:C1517)
		Use (Storage:C1525.Cron)
			Storage:C1525.Cron.Log:=New shared collection:C1527
		End use 
	End if 
	
	Use (Storage:C1525.Cron.Log)
		Storage:C1525.Cron.Log.push(New shared object:C1526("daemon"; Current method name:C684; "debug"; JSON Stringify:C1217($oParameter); "date_time"; String:C10(Current date:C33; ISO date:K1:8; Current time:C178)))
	End use 
	
End use 
