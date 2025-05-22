<cfscript>
  // create session
  claude=createAISession("claude");
  dump(inquiryAISession(claude,"who invented Lucee"));
  flush;
  // serialize session
  jsonData=serializeAiSession(session:claude,maxlength=10, condense:true);
  dump(jsonData);
  
  // load session
  chatgpt=loadaisession("chatgpt",jsonData);
  dump(inquiryAISession(chatgpt,"when was that?"));
  flush;

</cfscript>

