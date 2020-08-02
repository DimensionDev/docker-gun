const cluster = require("cluster");
if (cluster.isMaster) {
  cluster.fork();
  cluster.on("exit", () => {
    cluster.fork();
    require("gun/lib/crashed");
  });
} else {
  const fs = require("fs");
  const path = require("path");
  const Gun = require("gun");
  const files = path.join(__dirname, "files");
  const resouces = fs.existsSync(files)
    ? files
    : path.dirname(require.resolve("gun/examples/http"));
  Gun({
    web: require("http").createServer(Gun.serve(resouces)).listen(8765),
    multicast: false,
  });
  console.log(`Relay peer started on port 8765 with /gun`);
}
