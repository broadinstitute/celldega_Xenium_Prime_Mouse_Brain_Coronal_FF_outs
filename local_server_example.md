```
from http.server import HTTPServer, SimpleHTTPRequestHandler
import threading as thr
import celldega as dega

class CORSHTTPRequestHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'X-Requested-With, content-type, Authorization')  # Added Authorization
        self.send_header('Access-Control-Allow-Credentials', 'true')
        super().end_headers()

    def do_OPTIONS(self):
        self.send_response(200)
        self.end_headers()

    def log_message(self, format, *args):
        # Override log_message to prevent logging to the console.
        pass

server = HTTPServer(("", 0), CORSHTTPRequestHandler)
print(f"Server running on port {server.server_address[1]}")

service = thr.Thread(target=server.serve_forever)
service.start()

server_address = server.server_address[1]
server_address

base_url = f'http://localhost:{server_address}/path-to-landscape-files'

landscape_ist = dega.viz.Landscape(
    technology='Xenium',
    ini_zoom = -4.5,
    ini_x=6000,
    ini_y=8000,
    base_url = base_url,
)

landscape_ist
```
