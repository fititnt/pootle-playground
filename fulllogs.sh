
# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:44:29]
$ wget https://raw.githubusercontent.com/translate/pootle/master/docker-compose.yml     
--2018-07-07 10:44:33--  https://raw.githubusercontent.com/translate/pootle/master/docker-compose.yml
Resolvendo raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.92.133
Conectando-se a raw.githubusercontent.com (raw.githubusercontent.com)|151.101.92.133|:443... conectado.
A requisição HTTP foi enviada, aguardando resposta... 200 OK
Tamanho: 3036 (3,0K) [text/plain]
Salvando em: “docker-compose.yml”

docker-compose.yml                                        100%[==================================================================================================================================>]   2,96K  --.-KB/s    in 0s      

2018-07-07 10:44:33 (37,5 MB/s) - “docker-compose.yml” salvo [3036/3036]


# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:44:33]
$ wget https://raw.githubusercontent.com/translate/pootle/master/docker-compose.demo.yml
--2018-07-07 10:44:38--  https://raw.githubusercontent.com/translate/pootle/master/docker-compose.demo.yml
Resolvendo raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.92.133
Conectando-se a raw.githubusercontent.com (raw.githubusercontent.com)|151.101.92.133|:443... conectado.
A requisição HTTP foi enviada, aguardando resposta... 200 OK
Tamanho: 1132 (1,1K) [text/plain]
Salvando em: “docker-compose.demo.yml”

docker-compose.demo.yml                                   100%[==================================================================================================================================>]   1,11K  --.-KB/s    in 0s      

2018-07-07 10:44:38 (116 MB/s) - “docker-compose.demo.yml” salvo [1132/1132]

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:44:38]
$ docker-compose -f docker-compose.demo.yml up                                          
ERROR: Version in "./docker-compose.demo.yml" is unsupported. You might be seeing this error because you're using the wrong Compose file version. Either specify a supported version (e.g "2.2" or "3.3") and place your service definitions under the `services` key, or omit the `version` key and place your service definitions at the root of the file to use version 1.
For more on the Compose file format versions, see https://docs.docker.com/compose/compose-file/

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:46:56]
$ version: "2.4"

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:47:01]
$ docker-compose version
docker-compose version 1.18.0, build 8dd22a9
docker-py version: 2.6.1
CPython version: 2.7.13
OpenSSL version: OpenSSL 1.0.1t  3 May 2016
