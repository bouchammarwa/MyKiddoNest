const express = require("express"),
  app = express()

const db =require('./my_db')
//making sure that the db is connected 
db.query("SELECT 1")
  .then(() => { console.log("db connection succeded"),
  //then start the express server
      app.listen(3000,() => console.log("server started at 3000")) 
    })
  .catch(err =>console.log("db connection failed\n"+err))
 