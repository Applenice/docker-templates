#!/bin/bash

commit_id=$1

if [ -z $commit_id ];then
    echo "please input vscode version commit id! Specific path: vscode-help-about-commit."
    exit
fi

x64_download_url="https://update.code.visualstudio.com/commit:${commit_id}/server-linux-x64/stable"

mkdir -p /root/.vscode-server/bin
cd /root/.vscode-server/bin

rm -f vscode-server-linux-x64.tar.gz
rm -rf ${commit_id}

wget $x64_download_url -O vscode-server-linux-x64.tar.gz

tar -xvf vscode-server-linux-x64.tar.gz

mv vscode-server-linux-x64 ${commit_id}
