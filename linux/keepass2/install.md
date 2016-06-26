# Install KeePass 2 with KeeFox into Ubuntu

[Install KeeFox](https://addons.mozilla.org/ru/firefox/addon/keefox/)

`sudo apt-get install keepass2 mono-dmcs libmono-system-management4.0-cil libmono-system-numerics4.0-cil`

`sudo apt-add-repository ppa:dlech/keepass2-plugins`

`sudo apt-get update && sudo apt-get install xul-ext-keefox keepass2-plugin-keepasshttp`

## Install RPC plugin manually

`sudo sh -c 'mkdir /usr/lib/keepass2/plugins'`

`sudo cp $HOME/.mozilla/firefox/*.default/extensions/keefox@chris.tomlinson/deps/KeePassRPC.plgx /usr/lib/keepass2/plugins/`
