const cluster = require("cluster");
if (cluster.isMaster) {
  cluster.fork();
  cluster.on("exit", () => {
    cluster.fork();
    require("gun/lib/crashed");
  });
} else {
  const PORT = 8765;

  const fs = require("fs");
  const path = require("path");
  const Gun = require("gun");
  const files = path.join(__dirname, "files");
  const resources = fs.existsSync(files)
    ? files
    : path.dirname(require.resolve("gun/examples/http"));
  Gun({
    web: require("http").createServer(Gun.serve(resources)).listen(PORT),
    multicast: false,
  });
  console.log(`Relay peer started on port ${PORT} with /gun`);
}
