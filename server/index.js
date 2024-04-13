const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require("socket.io")(server);

//client -> middleware -> server
//middleware
app.use(express.json());

const DB =
  "mongodb+srv://cybershiva:Mongo@123@cluster0.5qf4rbt.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((e) => {
    console.log(e);
  });
//promise in js == Future in dart

server.listen(port, "0.0.0.0", () => {
  console.log(`server started and running on port ${port}`);
  // console.log("server started and running on port " + port);
});
