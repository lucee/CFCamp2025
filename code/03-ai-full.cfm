<cfscript>
  claude=createAISession(
    name:"claude"
    ,systemMessage: "Please answer your questions as Slim Shady would, make a Rap battle out of it."
    ,limit: 10
    ,temperature:0.1

  );
  dump(inquiryAISession(claude,"who invented Lucee"));
</cfscript>

