docker exec moviepilot-v2 rm /app/app/helper/user.sites.bin
docker exec moviepilot-v2 rm /app/app/helper/sites.cpython-311-darwin.so /app/app/helper/sites.cpython-312-darwin.so /app/app/helper/sites.cp311-win_amd64.pyd /app/app/helper/sites.cp312-win_amd64.pyd /app/app/helper/sites.cpython-311-aarch64-linux-gnu.so /app/app/helper/sites.cpython-311-x86_64-linux-gnu.so /app/app/helper/sites.cpython-312-aarch64-linux-gnu.so /app/app/helper/sites.cpython-312-x86_64-linux-gnu.so
docker exec moviepilot-v2 sed -i 's/html_doc = PyQuery(html_text)/html_doc = PyQuery("\\n"\+html_text)/' /app/app/modules/indexer/spider/__init__.py
docker cp ./sites.py moviepilot-v2:/app/app/helper
docker cp ./jackett moviepilot-v2:/app/app/plugins
docker restart moviepilot-v2
