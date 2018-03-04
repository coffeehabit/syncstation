include: 
  - syncstation.repos.apt-transport-https
  
syncthing-repo:
  pkgrepo.managed:
    - humanname: deb-syncthing
    - name: deb https://apt.syncthing.net/ syncthing stable
    - file: /etc/apt/sources.list
    - key_url: https://syncthing.net/release-key.txt
  - requires:
    - pkg: syncstation.repos.apt-transport-https
