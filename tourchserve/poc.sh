# 1. run
docker run -d --rm -it -p 8080:8080 -p 8081:8081 -p 8082:8082 -p 7070:7070 -p 7071:7071 --name shelltorch-demo pytorch/torchserve:0.8.1-cpu

docker logs -f shelltorch-demo


# 2. run shelltorch script
bash <(curl https://raw.githubusercontent.com/OligoCyberSecurity/ShellTorchChecker/main/ShellTorchChecker.sh) "127.0.0.1"


# 3. cleanup
docker kill shelltorch-demo && rm -rf model-store
