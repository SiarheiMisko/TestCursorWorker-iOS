import App
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let application = Application(env)
defer { application.shutdown() }

try configure(application)
try application.run()
