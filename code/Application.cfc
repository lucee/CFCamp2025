component {
	this.Name = "Lucee";

	if(!isNull(url.show) || isNull(session.show)) {
		session.show=url.show?:true;
	}

	this.monitoring.showDebug = session.show;
	this.monitoring.showDoc = session.show;
	this.monitoring.showMetric = session.show;

	this.monitoring.debuggingTemplate = session.show;
	this.monitoring.debuggingDatabase = session.show;
	this.monitoring.debuggingException = session.show;
	this.monitoring.debuggingTracing = session.show;
	this.monitoring.debuggingDump = session.show;
	this.monitoring.debuggingTimer = session.show;
	this.monitoring.debuggingImplicitAccess = session.show;
	this.monitoring.debuggingThread = session.show;



		function onRequest(template){

		param name="url.layout" default="default";
		include "inc/refs.cfs";

		var references = refSource[template] ?: [];

		if(url.layout == "default"){
		// dump(template);
		var source = fileRead(template);
			source = htmleditformat(source);
		var sourceFile = template;
		var nav = getNavigation();


			include "inc/layout-begin.cfm";
			include template;
			include "inc/layout-end.cfm";
		}
		else {
			include "#template#";
		}
	}


	function getNavigation(){
		var nav = [];
			directory sort="name" action="list" directory=getDirectoryFromPath(getCurrentTemplatePath()) filter="*-*.cfm" name="dir";
			loop query=dir {
				nav.append(dir.name);
			}
		return nav;
	}
} 