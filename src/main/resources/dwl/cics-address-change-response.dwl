%dw 2.0
output application/json
var endTime  = now()
var timeTaken = abs(endTime.hour - vars.startTimeFlow.hour) ++ ":" ++ abs(endTime.minutes - vars.startTimeFlow.minutes) ++ ":" ++ abs(endTime.seconds - vars.startTimeFlow.seconds)
---
if ( vars.DSF1RETURNstatusDL == "00" ) {
	
	correlationId : vars.correlationId,
	status : p('apiStatus.successCode'),
	message :p('cicserror.zero-zero-message'),
	processingTime : timeTaken
	
} 

else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-one-status') ) {
	correlationId : vars.correlationId,
	status: p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-one-message'),
	processingTime : timeTaken
	
}  
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-two-status') ) {
	correlationId : vars.correlationId,
	status: p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-two-message'),
	processingTime : timeTaken
	
}  
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-three-status') ) {
	correlationId : vars.correlationId,
	status:p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-three-message'),
	processingTime : timeTaken
	
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-six-status') ) {
	correlationId : vars.correlationId,
	status: p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-six-message'),
	processingTime : timeTaken
	
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-four-status') ) {
	correlationId : vars.correlationId,
	status: p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-four-message'),
	processingTime : timeTaken
	
} 
	else if ( vars.DSF2PROCSTATUS == p('cicserror.zero-seven-status') ) {
	correlationId : vars.correlationId,
	status: p('apiStatus.badRequestCode'),
	message: p('cicserror.zero-seven-message'),
	processingTime : timeTaken
	
} 
    else { correlationId : vars.correlationId,
			status: p('apiStatus.badRequestCode'),
		   message:p('apiStatus.badRequestMessage'),
		   processingTime : timeTaken}
 
