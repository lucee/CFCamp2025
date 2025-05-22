<cfscript>


claude=createAISession("claude");
echo("<pre>");
inquiryAISession(claude,"how to setup a AI endpoint in Lucee?",function (token) {
  echo(token);
  flush;
});
echo("</pre>");


</cfscript>

