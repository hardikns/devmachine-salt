required_pkgs:
    pkg.installed:
        - pkgs:
            - python-pip
            - python-dev
            - build-essential
            - python-virtualenv
            - virtualenvwrapper
            - nginx
            - git
            - postgresql
            - libpq-dev
            - libmemcached-dev
            - libfreetype6-dev
            - rabbitmq-server
            - xfonts-75dpi
            - terminator
            - eclipse
            - libxml2-dev 
            - libxslt1-dev
            
Create sym links for PIL:
    cmd.run:
        - name: |
            sudo ln -s `dpkg -L libfreetype6-dev|grep libfreetype.so` /usr/lib/libfreetype.so
            sudo ln -s `dpkg -L zlib1g-dev | grep libz.so` /usr/lib/libz.so
        - user: root
        - cwd: /tmp
        - creates:
            - /usr/lib/libfreetype.so

Install wkhtmltox:
    cmd.run:
        - name: |
            wget http://downloads.sourceforge.net/wkhtmltopdf/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
            dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
        - user: root
        - cwd: /tmp
        - creates:
            - /usr/local/bin/wkhtmltopdf

Install sublime3:
    cmd.run:
        - name: |
            wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
            dpkg -i sublime-text_build-3083_amd64.deb
        - user: root
        - cwd: /tmp
        - creates:
            - /usr/bin/subl
