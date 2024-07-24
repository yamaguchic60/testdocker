# testdocker
test of docker


$ docker build -t ubuntuguitest .
#これはDockerfileからimageを作るコマンドです。-tオプションはimageに名前をつけるもので、ubuntuguitestというイメージの名前にしています。

$ docker run --name guitest -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -it ubuntuguitest
＃これはイメージからコンテナを作るコマンドです。--nameはコンテナに名前をつけるオプションでguitestという名前にしています。-eは環境変数を設定する変数で、ホストのDISPLAY環境変数を渡しています。 -vはホストのx11にマウントしています。これでdockerでGUIの使用を可能にしています。-it対話型にするオプションです。ubuntuguitestもととなるイメージの名前です。
