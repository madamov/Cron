//%attributes = {}
var $oCronClass; $oDeamons : Object
var $oDeamon1; $oDeamon2; $oDeamon3 : Object

TRACE:C157

If (True:C214)
	$oDeamons:=Import Cron
End if 

// first daemon runs every 30 seconds
$oDeamon1:=$oDeamons.Daemon.new("LIMS_daemon_1"; Formula:C1597(LIMS_Cron1); 5; New object:C1471("batchID"; "A0939200"))


// first daemon runs at specific time
$oDeamon2:=$oDeamons.Daemon.new("LIMS_daemon_2"; Formula:C1597(LIMS_Cron2); "at 16:16"; New object:C1471("boxID"; "B432423"))

// first daemon runs at specific time
$oDeamon3:=$oDeamons.Daemon.new("LIMS_daemon_3"; Formula:C1597(LIMS_Cron3); "every 3 minutes"; New object:C1471("sampleID"; "S532776"))

$oCronClass:=$oDeamons.Cron.new()

$oCronClass.add($oDeamon1).start()
$oCronClass.add($oDeamon2).start()
$oCronClass.add($oDeamon3).start()
