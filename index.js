const fs = require("fs");
const path = require("path");
const Gun = require("gun");

const PORT = 8765;

let public = path.join(__dirname, "files");
if (!fs.existsSync(public)) {
  public = path.dirname(require.resolve("gun/examples/http"));
}

const server = require("http")
  .createServer(Gun.serve(public))
  .on("listening", () => {
    console.log(`Relay peer started on port ${PORT} with /gun`);
  })
  .on("error", (err) => {
    console.log("Error starting server: ", err);
    process.exit(1);
  });

Gun({ web: server, multicast: false });

server.listen(PORT);
