<!doctype html>
<cfoutput>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lucee 6 Code Examples</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="/inc/styles.css">
  </head>
  <body>

    <cfparam name="body" default="">
    <cfparam name="source" default="">
    <cfparam name="sourceFile" default="">
    <div class="container-fluid">
        
        <div class="row">
            <h1>Lucee 6 Code Examples #sourceFile#</h1>
            <div class="col">


                <ul class="nav flex-column">
                    <cfloop array="#nav#" item="navItem">
                        <li class="nav-item">
                            <cfset active = "/#navItem#" EQ sourceFile ? "active" : "">
                            <a class="nav-link #active#" href="#navItem#">#navItem#</a>
                        </li>
                    </cfloop>
                  </ul>
            </div>
            <div class="col">
                <h2>Source</h2>
                
                <div class="highlight text-bg-light ">
                    <pre>#source#</pre>
                </div>

                <cfif references.len()>
                    <hr>
                    <h3>References</h3>
                    <cfloop array="#references#" item="reference">
                        <h4>#reference#</h4>
                        <div class="highlight text-bg-light ">
                            <pre>#htmleditformat(FileRead(reference))#</pre>
                        </div>
                    </cfloop>
                </cfif>
             
               
            </div>
            <div class="col">
                <h2>Output</h2>
                #body#
            </div>
        </div>
        

        <div class="row">
            <div class="col">
            <hr>
            Copyright &copy; #Year(Now())# by Lucee Association Switzerland.
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="main.js"></script>
  </body>
</html>
</cfoutput>