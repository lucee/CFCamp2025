<cfscript>
yaml=new component javasettings='{"maven":["org.yaml:snakeyaml:2.4"]}' {
 import org.yaml.snakeyaml.*;
 import java.io.FileInputStream;
 function read() {
    var yaml = new Yaml();
   return yaml.load(fileRead("customer.yaml"));
 }
};
dump(yaml.read());
</cfscript>

