const fs = require("fs");
const xml2js = require("xml2js");

fs.readFile("test.xml", "utf-8", function(err, data) {
    if (err) console.log(err);
    console.log(data);

    xml2js.parseString(data, function(err, result) {
        if (err) console.log(err)

        const json = result;

        // json.root.graph[0].node[0].weigth
        
        json.root.graph[0].node[0].weight = "69";


        // create new xml and save
        const builder = new xml2js.Builder();
        const xml = builder.buildObject(json);

        fs.writeFile("edited-test.xml", xml, (err, data) => {
            if (err)
                console.log(err);
            console.log("SUCCESSFULLY!!");
        });

 
    });
});