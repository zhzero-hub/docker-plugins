docker exec moviepilot-v2 rm /app/app/helper/user.sites.bin
docker exec moviepilot-v2 rm /app/app/helper/sites.cpython-311-darwin.so
docker exec moviepilot-v2 rm /app/app/helper/sites.cpython-312-darwin.so
docker exec moviepilot-v2 sed -i 's/html_doc = PyQuery(html_text)/html_doc = PyQuery("\\n"\+html_text)/' /app/app/modules/indexer/spider/__init__.py
docker cp /Users/zhzero/Sites/docker-services/moviepilot/extras/sites.py moviepilot-v2:/app/app/helper
docker cp /Users/zhzero/Sites/docker-services/moviepilot/extras/jackett moviepilot-v2:/app/app/plugins
docker restart moviepilot-v2
