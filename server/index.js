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


io.on("connection", (socket) => {
  console.log("Connected io");
  socket.on("createRoom", ({ nickname }) => {
    console.log(nickname);
  });
});

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
