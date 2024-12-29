from ruamel.yaml import CommentedMap
from typing import Dict, List

from version import APP_VERSION


class SitesHelper:
    auth_level = 2
    auth_version = APP_VERSION
    indexer_version = APP_VERSION
    sites: Dict[str, CommentedMap] = {}

    def __init__(self):
        pass
    
    def check_user(self, **kwargs):
        return True, "checkuser success"

    def check(self, domain: str):
        return None, ""
    
    def add_indexer(self, domain: str, site: CommentedMap):
        SitesHelper.sites[domain] = site

    def get_indexer(self, domain: str) -> CommentedMap:
        return SitesHelper.sites.get(domain, None)

    def get_indexers(self) -> List[CommentedMap]:
        return list(SitesHelper.sites.values())
    
    def get_authsites():
        pass


if __name__ == '__main__':
    site = SitesHelper()
    site.add_indexer("example.com", CommentedMap())
    print(site.get_indexers())
