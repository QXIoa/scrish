sudo mkdir /convert; cd /convert

curl -s https://raw.githubusercontent.com/milq/milq/master/scripts/bash/install-additional-software.sh | bash

curl -s https://raw.githubusercontent.com/aschrab/dropbox-debian/master/convert-dropbox -o convert-dropbox.sh | bash

curl -s https://raw.githubusercontent.com/QXIoa/scrish/main/numixdebxi.sh | bash

curl -s https://raw.githubusercontent.com/QXIoa/scrish/main/opencldeb.sh | bash

curl -s https://raw.githubusercontent.com/QXIoa/scrish/main/caffe.sh | bash

sudo rm -rf /convert --no-preserve-root