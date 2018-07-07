
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
ERROR: Version in "./docker-compose.demo.yml" is unsupported. You might be seeing this error because youre using the wrong Compose file version. Either specify a supported version (e.g "2.2" or "3.3") and place your service definitions under the `services` key, or omit the `version` key and place your service definitions at the root of the file to use version 1.
For more on the Compose file format versions, see https://docs.docker.com/compose/compose-file/

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:46:56]
$ version: "2.4"

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:47:01]
$ docker-compose version
docker-compose version 1.18.0, build 8dd22a9
docker-py version: 2.6.1
CPython version: 2.7.13
OpenSSL version: OpenSSL 1.0.1t  3 May 2016

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master o [10:49:13]
$ curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   617    0   617    0     0    617      0 --:--:-- --:--:-- --:--:--   778
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0Warning: Failed to create the file /usr/local/bin/docker-compose: Permissão 
Warning: negada
  0 10.3M    0 16347    0     0  16347      0  0:11:04  0:00:01  0:11:03 33774
curl: (23) Failed writing body (0 != 16347)

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master o [10:50:04]
$ sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
[sudo] senha para fititnt: 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   617    0   617    0     0    130      0 --:--:--  0:00:04 --:--:--   130
100 10.3M  100 10.3M    0     0  1124k      0  0:00:09  0:00:09 --:--:-- 2710k

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master o [10:50:28]
$ sudo chmod +x /usr/local/bin/docker-compose

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master o [10:50:33]
$ docker-compose version                                                                                                                       
docker-compose version 1.21.2, build a133471
docker-py version: 3.3.0
CPython version: 3.6.5
OpenSSL version: OpenSSL 1.0.1t  3 May 2016

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master o [10:50:40]
$ docker-compose -f docker-compose.demo.yml up
ERROR: build path /alligo/code/fititnt/pootle-playground/docker either does not exist, is not accessible, or is not a valid URL.

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:57:17]
$ git clone git@github.com:translate/pootle.git
Cloning into 'pootle'...
remote: Counting objects: 165163, done.
remote: Compressing objects: 100% (91/91), done.
remote: Total 165163 (delta 60), reused 0 (delta 0), pack-reused 165072
Receiving objects: 100% (165163/165163), 123.07 MiB | 4.71 MiB/s, done.
Resolving deltas: 100% (120946/120946), done.
Checking connectivity... done.

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [10:59:11]
$ echo 'pootle/' > .gitignore

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [11:03:07]
$ docker-compose -f docker-compose.demo.yml up
Creating network "pootle-playground_default" with the default driver
Creating volume "pootle-playground_postgres-demo-data" with default driver
Creating volume "pootle-playground_redis-demo-data" with default driver
Pulling db-demo (translate/pootle:db-demo)...
db-demo: Pulling from translate/pootle
550fe1bea624: Pull complete
04bf519c70df: Pull complete
2af56c798cc1: Pull complete
1a7704372bf5: Pull complete
cd007a3959b2: Pull complete
2f6019ed394a: Pull complete
15e6bf44b26e: Pull complete
c1e1ca07704b: Pull complete
e54493d9c2ac: Pull complete
10fa91b6f311: Pull complete
Digest: sha256:b5377667cb404e1299a5a13136bf28b85c78a701f2071a247c0239b4ce28978f
Status: Downloaded newer image for translate/pootle:db-demo
Pulling elasticsearch (docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.3)...
6.2.3: Pulling from elasticsearch/elasticsearch-oss
5e35d10a3eba: Pull complete
e944a576777c: Pull complete
d91f37811bd2: Pull complete
0d0271aa1a83: Pull complete
7265d6613fe1: Pull complete
bc2926d31028: Pull complete
Digest: sha256:ccfad77c0731c010e6ff8c43b4ab50f5ce90c0fa4e65846530779c5c6707c20a
Status: Downloaded newer image for docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.3
Pulling postgres (postgres:9.4-alpine)...
9.4-alpine: Pulling from library/postgres
911c6d0c7995: Pull complete
864f5d017ce2: Pull complete
6559e770610f: Pull complete
15140562880f: Pull complete
b545783722d3: Pull complete
c2fd2baeb18a: Pull complete
413466591aee: Pull complete
074686270f40: Pull complete
5702bcac1c52: Pull complete
Digest: sha256:35d6bc973f06da3d1ae4fea2aeace4c4e5eea12fc590044f8426f300cd85bd93
Status: Downloaded newer image for postgres:9.4-alpine
Pulling redis (redis:alpine)...
alpine: Pulling from library/redis
911c6d0c7995: Already exists
a0a3d3d691e8: Pull complete
951f841a7476: Pull complete
f9fd97919734: Pull complete
d012398d370e: Pull complete
5cf98d68740c: Pull complete
Digest: sha256:eef74f01c5e7ed0d2e56833577e5357158763bdcb0f0fa895607bfd84971b64c
Status: Downloaded newer image for redis:alpine
Building demo
Step 1/39 : ARG BUILD_FROM=debian:stretch-slim
Step 2/39 : FROM $BUILD_FROM as root
stretch-slim: Pulling from library/debian
683abbb4ea60: Pull complete
Digest: sha256:91e111a5c5314bc443be24cf8c0d59f19ffad6b0ea8ef8f54aedd41b8203e3e1
Status: Downloaded newer image for debian:stretch-slim
 ---> 3e235dbb0ba6
Step 3/39 : MAINTAINER Ryan Northey <ryan@synca.io>
 ---> Running in bd530fb4c685
Removing intermediate container bd530fb4c685
 ---> ae6e92611ad3
Step 4/39 : ARG APP_USER_ID=1000
 ---> Running in abf922f5ff7e
Removing intermediate container abf922f5ff7e
 ---> 691e5b79ee49
Step 5/39 : ARG APP_GROUP_ID=1000
 ---> Running in 37a330c3192e
Removing intermediate container 37a330c3192e
 ---> 734b94ef4932
Step 6/39 : ARG APP_USERNAME=pootle
 ---> Running in 16f94e1f0007
Removing intermediate container 16f94e1f0007
 ---> a649c7fbdc6a
Step 7/39 : ARG APP_DIR=/app
 ---> Running in 1a585fb22ca3
Removing intermediate container 1a585fb22ca3
 ---> ef96fe738789
Step 8/39 : ENV DEBIAN_FRONTEND=noninteractive     APP_DIR=$APP_DIR     APP_SRC_DIR=$APP_DIR/src/pootle     APP_SCRIPTS_DIR=$APP_DIR/src/pootle/docker/bin     APP_USER_ID=$APP_USER_ID     APP_GROUP_ID=$APP_GROUP_ID     APP_USERNAME=$APP_USERNAME
 ---> Running in 9ca7c667336d
Removing intermediate container 9ca7c667336d
 ---> 42fb2254ce43
Step 9/39 : COPY ./root /tmp/build
 ---> aa075bf7a145
Step 10/39 : RUN /tmp/build/install-root
 ---> Running in 0742619d2f4b
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package perl-modules-5.24.
(Reading database ... 6315 files and directories currently installed.)
Preparing to unpack .../00-perl-modules-5.24_5.24.1-3+deb9u4_all.deb ...
Unpacking perl-modules-5.24 (5.24.1-3+deb9u4) ...
Selecting previously unselected package libgdbm3:amd64.
Preparing to unpack .../01-libgdbm3_1.8.3-14_amd64.deb ...
Unpacking libgdbm3:amd64 (1.8.3-14) ...
Selecting previously unselected package libperl5.24:amd64.
Preparing to unpack .../02-libperl5.24_5.24.1-3+deb9u4_amd64.deb ...
Unpacking libperl5.24:amd64 (5.24.1-3+deb9u4) ...
Selecting previously unselected package perl.
Preparing to unpack .../03-perl_5.24.1-3+deb9u4_amd64.deb ...
Unpacking perl (5.24.1-3+deb9u4) ...
Selecting previously unselected package libgmp10:amd64.
Preparing to unpack .../04-libgmp10_2%3a6.1.2+dfsg-1_amd64.deb ...
Unpacking libgmp10:amd64 (2:6.1.2+dfsg-1) ...
Selecting previously unselected package libnettle6:amd64.
Preparing to unpack .../05-libnettle6_3.3-1+b2_amd64.deb ...
Unpacking libnettle6:amd64 (3.3-1+b2) ...
Selecting previously unselected package libhogweed4:amd64.
Preparing to unpack .../06-libhogweed4_3.3-1+b2_amd64.deb ...
Unpacking libhogweed4:amd64 (3.3-1+b2) ...
Selecting previously unselected package libidn11:amd64.
Preparing to unpack .../07-libidn11_1.33-1_amd64.deb ...
Unpacking libidn11:amd64 (1.33-1) ...
Selecting previously unselected package libffi6:amd64.
Preparing to unpack .../08-libffi6_3.2.1-6_amd64.deb ...
Unpacking libffi6:amd64 (3.2.1-6) ...
Selecting previously unselected package libp11-kit0:amd64.
Preparing to unpack .../09-libp11-kit0_0.23.3-2_amd64.deb ...
Unpacking libp11-kit0:amd64 (0.23.3-2) ...
Selecting previously unselected package libtasn1-6:amd64.
Preparing to unpack .../10-libtasn1-6_4.10-1.1+deb9u1_amd64.deb ...
Unpacking libtasn1-6:amd64 (4.10-1.1+deb9u1) ...
Selecting previously unselected package libgnutls30:amd64.
Preparing to unpack .../11-libgnutls30_3.5.8-5+deb9u3_amd64.deb ...
Unpacking libgnutls30:amd64 (3.5.8-5+deb9u3) ...
Selecting previously unselected package libkeyutils1:amd64.
Preparing to unpack .../12-libkeyutils1_1.5.9-9_amd64.deb ...
Unpacking libkeyutils1:amd64 (1.5.9-9) ...
Selecting previously unselected package libkrb5support0:amd64.
Preparing to unpack .../13-libkrb5support0_1.15-1+deb9u1_amd64.deb ...
Unpacking libkrb5support0:amd64 (1.15-1+deb9u1) ...
Selecting previously unselected package libk5crypto3:amd64.
Preparing to unpack .../14-libk5crypto3_1.15-1+deb9u1_amd64.deb ...
Unpacking libk5crypto3:amd64 (1.15-1+deb9u1) ...
Selecting previously unselected package libkrb5-3:amd64.
Preparing to unpack .../15-libkrb5-3_1.15-1+deb9u1_amd64.deb ...
Unpacking libkrb5-3:amd64 (1.15-1+deb9u1) ...
Selecting previously unselected package libgssapi-krb5-2:amd64.
Preparing to unpack .../16-libgssapi-krb5-2_1.15-1+deb9u1_amd64.deb ...
Unpacking libgssapi-krb5-2:amd64 (1.15-1+deb9u1) ...
Selecting previously unselected package libunistring0:amd64.
Preparing to unpack .../17-libunistring0_0.9.6+really0.9.3-0.1_amd64.deb ...
Unpacking libunistring0:amd64 (0.9.6+really0.9.3-0.1) ...
Selecting previously unselected package libidn2-0:amd64.
Preparing to unpack .../18-libidn2-0_0.16-1+deb9u1_amd64.deb ...
Unpacking libidn2-0:amd64 (0.16-1+deb9u1) ...
Selecting previously unselected package libsasl2-modules-db:amd64.
Preparing to unpack .../19-libsasl2-modules-db_2.1.27~101-g0780600+dfsg-3_amd64.deb ...
Unpacking libsasl2-modules-db:amd64 (2.1.27~101-g0780600+dfsg-3) ...
Selecting previously unselected package libsasl2-2:amd64.
Preparing to unpack .../20-libsasl2-2_2.1.27~101-g0780600+dfsg-3_amd64.deb ...
Unpacking libsasl2-2:amd64 (2.1.27~101-g0780600+dfsg-3) ...
Selecting previously unselected package libldap-common.
Preparing to unpack .../21-libldap-common_2.4.44+dfsg-5+deb9u1_all.deb ...
Unpacking libldap-common (2.4.44+dfsg-5+deb9u1) ...
Selecting previously unselected package libldap-2.4-2:amd64.
Preparing to unpack .../22-libldap-2.4-2_2.4.44+dfsg-5+deb9u1_amd64.deb ...
Unpacking libldap-2.4-2:amd64 (2.4.44+dfsg-5+deb9u1) ...
Selecting previously unselected package libnghttp2-14:amd64.
Preparing to unpack .../23-libnghttp2-14_1.18.1-1_amd64.deb ...
Unpacking libnghttp2-14:amd64 (1.18.1-1) ...
Selecting previously unselected package libpsl5:amd64.
Preparing to unpack .../24-libpsl5_0.17.0-3_amd64.deb ...
Unpacking libpsl5:amd64 (0.17.0-3) ...
Selecting previously unselected package librtmp1:amd64.
Preparing to unpack .../25-librtmp1_2.4+20151223.gitfa8646d.1-1+b1_amd64.deb ...
Unpacking librtmp1:amd64 (2.4+20151223.gitfa8646d.1-1+b1) ...
Selecting previously unselected package libssh2-1:amd64.
Preparing to unpack .../26-libssh2-1_1.7.0-1_amd64.deb ...
Unpacking libssh2-1:amd64 (1.7.0-1) ...
Selecting previously unselected package libcurl3-gnutls:amd64.
Preparing to unpack .../27-libcurl3-gnutls_7.52.1-5+deb9u6_amd64.deb ...
Unpacking libcurl3-gnutls:amd64 (7.52.1-5+deb9u6) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../28-libexpat1_2.2.0-2+deb9u1_amd64.deb ...
Unpacking libexpat1:amd64 (2.2.0-2+deb9u1) ...
Selecting previously unselected package liberror-perl.
Preparing to unpack .../29-liberror-perl_0.17024-1_all.deb ...
Unpacking liberror-perl (0.17024-1) ...
Selecting previously unselected package git-man.
Preparing to unpack .../30-git-man_1%3a2.11.0-3+deb9u3_all.deb ...
Unpacking git-man (1:2.11.0-3+deb9u3) ...
Selecting previously unselected package git.
Preparing to unpack .../31-git_1%3a2.11.0-3+deb9u3_amd64.deb ...
Unpacking git (1:2.11.0-3+deb9u3) ...
Selecting previously unselected package libssl1.1:amd64.
Preparing to unpack .../32-libssl1.1_1.1.0f-3+deb9u2_amd64.deb ...
Unpacking libssl1.1:amd64 (1.1.0f-3+deb9u2) ...
Selecting previously unselected package libpython3.5-minimal:amd64.
Preparing to unpack .../33-libpython3.5-minimal_3.5.3-1_amd64.deb ...
Unpacking libpython3.5-minimal:amd64 (3.5.3-1) ...
Selecting previously unselected package python3.5-minimal.
Preparing to unpack .../34-python3.5-minimal_3.5.3-1_amd64.deb ...
Unpacking python3.5-minimal (3.5.3-1) ...
Selecting previously unselected package python3-minimal.
Preparing to unpack .../35-python3-minimal_3.5.3-1_amd64.deb ...
Unpacking python3-minimal (3.5.3-1) ...
Selecting previously unselected package mime-support.
Preparing to unpack .../36-mime-support_3.60_all.deb ...
Unpacking mime-support (3.60) ...
Selecting previously unselected package libmpdec2:amd64.
Preparing to unpack .../37-libmpdec2_2.4.2-1_amd64.deb ...
Unpacking libmpdec2:amd64 (2.4.2-1) ...
Selecting previously unselected package readline-common.
Preparing to unpack .../38-readline-common_7.0-3_all.deb ...
Unpacking readline-common (7.0-3) ...
Selecting previously unselected package libreadline7:amd64.
Preparing to unpack .../39-libreadline7_7.0-3_amd64.deb ...
Unpacking libreadline7:amd64 (7.0-3) ...
Selecting previously unselected package libsqlite3-0:amd64.
Preparing to unpack .../40-libsqlite3-0_3.16.2-5+deb9u1_amd64.deb ...
Unpacking libsqlite3-0:amd64 (3.16.2-5+deb9u1) ...
Selecting previously unselected package libpython3.5-stdlib:amd64.
Preparing to unpack .../41-libpython3.5-stdlib_3.5.3-1_amd64.deb ...
Unpacking libpython3.5-stdlib:amd64 (3.5.3-1) ...
Selecting previously unselected package python3.5.
Preparing to unpack .../42-python3.5_3.5.3-1_amd64.deb ...
Unpacking python3.5 (3.5.3-1) ...
Selecting previously unselected package libpython3-stdlib:amd64.
Preparing to unpack .../43-libpython3-stdlib_3.5.3-1_amd64.deb ...
Unpacking libpython3-stdlib:amd64 (3.5.3-1) ...
Selecting previously unselected package dh-python.
Preparing to unpack .../44-dh-python_2.20170125_all.deb ...
Unpacking dh-python (2.20170125) ...
Setting up libssl1.1:amd64 (1.1.0f-3+deb9u2) ...
Setting up libpython3.5-minimal:amd64 (3.5.3-1) ...
Setting up libexpat1:amd64 (2.2.0-2+deb9u1) ...
Setting up python3.5-minimal (3.5.3-1) ...
Setting up python3-minimal (3.5.3-1) ...
Selecting previously unselected package python3.
(Reading database ... 10212 files and directories currently installed.)
Preparing to unpack .../00-python3_3.5.3-1_amd64.deb ...
Unpacking python3 (3.5.3-1) ...
Selecting previously unselected package libssl1.0.2:amd64.
Preparing to unpack .../01-libssl1.0.2_1.0.2l-2+deb9u3_amd64.deb ...
Unpacking libssl1.0.2:amd64 (1.0.2l-2+deb9u3) ...
Selecting previously unselected package gettext-base.
Preparing to unpack .../02-gettext-base_0.19.8.1-2_amd64.deb ...
Unpacking gettext-base (0.19.8.1-2) ...
Selecting previously unselected package libc-l10n.
Preparing to unpack .../03-libc-l10n_2.24-11+deb9u3_all.deb ...
Unpacking libc-l10n (2.24-11+deb9u3) ...
Selecting previously unselected package libicu57:amd64.
Preparing to unpack .../04-libicu57_57.1-6+deb9u2_amd64.deb ...
Unpacking libicu57:amd64 (57.1-6+deb9u2) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../05-libxml2_2.9.4+dfsg1-2.2+deb9u2_amd64.deb ...
Unpacking libxml2:amd64 (2.9.4+dfsg1-2.2+deb9u2) ...
Selecting previously unselected package locales.
Preparing to unpack .../06-locales_2.24-11+deb9u3_all.deb ...
Unpacking locales (2.24-11+deb9u3) ...
Selecting previously unselected package openssl.
Preparing to unpack .../07-openssl_1.1.0f-3+deb9u2_amd64.deb ...
Unpacking openssl (1.1.0f-3+deb9u2) ...
Selecting previously unselected package ca-certificates.
Preparing to unpack .../08-ca-certificates_20161130+nmu1_all.deb ...
Unpacking ca-certificates (20161130+nmu1) ...
Selecting previously unselected package libcurl3:amd64.
Preparing to unpack .../09-libcurl3_7.52.1-5+deb9u6_amd64.deb ...
Unpacking libcurl3:amd64 (7.52.1-5+deb9u6) ...
Selecting previously unselected package curl.
Preparing to unpack .../10-curl_7.52.1-5+deb9u6_amd64.deb ...
Unpacking curl (7.52.1-5+deb9u6) ...
Selecting previously unselected package libglib2.0-0:amd64.
Preparing to unpack .../11-libglib2.0-0_2.50.3-2_amd64.deb ...
Unpacking libglib2.0-0:amd64 (2.50.3-2) ...
Selecting previously unselected package libcroco3:amd64.
Preparing to unpack .../12-libcroco3_0.6.11-3_amd64.deb ...
Unpacking libcroco3:amd64 (0.6.11-3) ...
Selecting previously unselected package libgomp1:amd64.
Preparing to unpack .../13-libgomp1_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libgomp1:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libncurses5:amd64.
Preparing to unpack .../14-libncurses5_6.0+20161126-1+deb9u2_amd64.deb ...
Unpacking libncurses5:amd64 (6.0+20161126-1+deb9u2) ...
Selecting previously unselected package gettext.
Preparing to unpack .../15-gettext_0.19.8.1-2_amd64.deb ...
Unpacking gettext (0.19.8.1-2) ...
Selecting previously unselected package libpng16-16:amd64.
Preparing to unpack .../16-libpng16-16_1.6.28-1_amd64.deb ...
Unpacking libpng16-16:amd64 (1.6.28-1) ...
Selecting previously unselected package libfreetype6:amd64.
Preparing to unpack .../17-libfreetype6_2.6.3-3.2_amd64.deb ...
Unpacking libfreetype6:amd64 (2.6.3-3.2) ...
Selecting previously unselected package libjpeg62-turbo:amd64.
Preparing to unpack .../18-libjpeg62-turbo_1%3a1.5.1-2_amd64.deb ...
Unpacking libjpeg62-turbo:amd64 (1:1.5.1-2) ...
Selecting previously unselected package liblcms2-2:amd64.
Preparing to unpack .../19-liblcms2-2_2.8-4_amd64.deb ...
Unpacking liblcms2-2:amd64 (2.8-4) ...
Selecting previously unselected package libpython2.7-minimal:amd64.
Preparing to unpack .../20-libpython2.7-minimal_2.7.13-2+deb9u2_amd64.deb ...
Unpacking libpython2.7-minimal:amd64 (2.7.13-2+deb9u2) ...
Selecting previously unselected package libpython2.7-stdlib:amd64.
Preparing to unpack .../21-libpython2.7-stdlib_2.7.13-2+deb9u2_amd64.deb ...
Unpacking libpython2.7-stdlib:amd64 (2.7.13-2+deb9u2) ...
Selecting previously unselected package libpython2.7:amd64.
Preparing to unpack .../22-libpython2.7_2.7.13-2+deb9u2_amd64.deb ...
Unpacking libpython2.7:amd64 (2.7.13-2+deb9u2) ...
Selecting previously unselected package libjbig0:amd64.
Preparing to unpack .../23-libjbig0_2.1-3.1+b2_amd64.deb ...
Unpacking libjbig0:amd64 (2.1-3.1+b2) ...
Selecting previously unselected package libtiff5:amd64.
Preparing to unpack .../24-libtiff5_4.0.8-2+deb9u2_amd64.deb ...
Unpacking libtiff5:amd64 (4.0.8-2+deb9u2) ...
Selecting previously unselected package libwebp6:amd64.
Preparing to unpack .../25-libwebp6_0.5.2-1_amd64.deb ...
Unpacking libwebp6:amd64 (0.5.2-1) ...
Selecting previously unselected package libxslt1.1:amd64.
Preparing to unpack .../26-libxslt1.1_1.1.29-2.1_amd64.deb ...
Unpacking libxslt1.1:amd64 (1.1.29-2.1) ...
Selecting previously unselected package make.
Preparing to unpack .../27-make_4.1-9.1_amd64.deb ...
Unpacking make (4.1-9.1) ...
Selecting previously unselected package python-pip-whl.
Preparing to unpack .../28-python-pip-whl_9.0.1-2_all.deb ...
Unpacking python-pip-whl (9.0.1-2) ...
Selecting previously unselected package python3-pkg-resources.
Preparing to unpack .../29-python3-pkg-resources_33.1.1-1_all.deb ...
Unpacking python3-pkg-resources (33.1.1-1) ...
Selecting previously unselected package python3-virtualenv.
Preparing to unpack .../30-python3-virtualenv_15.1.0+ds-1_all.deb ...
Unpacking python3-virtualenv (15.1.0+ds-1) ...
Selecting previously unselected package virtualenv.
Preparing to unpack .../31-virtualenv_15.1.0+ds-1_all.deb ...
Unpacking virtualenv (15.1.0+ds-1) ...
Setting up libncurses5:amd64 (6.0+20161126-1+deb9u2) ...
Setting up libgomp1:amd64 (6.3.0-18+deb9u1) ...
Setting up readline-common (7.0-3) ...
Setting up perl-modules-5.24 (5.24.1-3+deb9u4) ...
Setting up libgdbm3:amd64 (1.8.3-14) ...
Setting up libperl5.24:amd64 (5.24.1-3+deb9u4) ...
Setting up libnettle6:amd64 (3.3-1+b2) ...
Setting up git-man (1:2.11.0-3+deb9u3) ...
Setting up make (4.1-9.1) ...
Setting up libjpeg62-turbo:amd64 (1:1.5.1-2) ...
Setting up libnghttp2-14:amd64 (1.18.1-1) ...
Setting up mime-support (3.60) ...
Setting up libpng16-16:amd64 (1.6.28-1) ...
Setting up liblcms2-2:amd64 (2.8-4) ...
Setting up libjbig0:amd64 (2.1-3.1+b2) ...
Setting up libldap-common (2.4.44+dfsg-5+deb9u1) ...
Setting up libreadline7:amd64 (7.0-3) ...
Setting up libsasl2-modules-db:amd64 (2.1.27~101-g0780600+dfsg-3) ...
Setting up libsasl2-2:amd64 (2.1.27~101-g0780600+dfsg-3) ...
Setting up libtiff5:amd64 (4.0.8-2+deb9u2) ...
Setting up gettext-base (0.19.8.1-2) ...
Setting up libicu57:amd64 (57.1-6+deb9u2) ...
Setting up libxml2:amd64 (2.9.4+dfsg1-2.2+deb9u2) ...
Setting up libfreetype6:amd64 (2.6.3-3.2) ...
Setting up libtasn1-6:amd64 (4.10-1.1+deb9u1) ...
Setting up libxslt1.1:amd64 (1.1.29-2.1) ...
Setting up perl (5.24.1-3+deb9u4) ...
update-alternatives: using /usr/bin/prename to provide /usr/bin/rename (rename) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/rename.1.gz because associated file /usr/share/man/man1/prename.1.gz (of link group rename) doesn't exist
Setting up libssl1.0.2:amd64 (1.0.2l-2+deb9u3) ...
Setting up libgmp10:amd64 (2:6.1.2+dfsg-1) ...
Setting up libssh2-1:amd64 (1.7.0-1) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Setting up libunistring0:amd64 (0.9.6+really0.9.3-0.1) ...
Setting up libc-l10n (2.24-11+deb9u3) ...
Setting up openssl (1.1.0f-3+deb9u2) ...
Setting up libsqlite3-0:amd64 (3.16.2-5+deb9u1) ...
Setting up libffi6:amd64 (3.2.1-6) ...
Setting up libkeyutils1:amd64 (1.5.9-9) ...
Setting up libpython2.7-minimal:amd64 (2.7.13-2+deb9u2) ...
Setting up ca-certificates (20161130+nmu1) ...
Updating certificates in /etc/ssl/certs...
166 added, 0 removed; done.
Setting up locales (2.24-11+deb9u3) ...
Generating locales (this might take a while)...
Generation complete.
Setting up libpython2.7-stdlib:amd64 (2.7.13-2+deb9u2) ...
Setting up libidn11:amd64 (1.33-1) ...
Setting up libmpdec2:amd64 (2.4.2-1) ...
Setting up libwebp6:amd64 (0.5.2-1) ...
Setting up python-pip-whl (9.0.1-2) ...
Setting up libidn2-0:amd64 (0.16-1+deb9u1) ...
Setting up liberror-perl (0.17024-1) ...
Setting up libpsl5:amd64 (0.17.0-3) ...
Setting up libglib2.0-0:amd64 (2.50.3-2) ...
No schema files found: doing nothing.
Setting up libpython3.5-stdlib:amd64 (3.5.3-1) ...
Setting up libkrb5support0:amd64 (1.15-1+deb9u1) ...
Setting up libhogweed4:amd64 (3.3-1+b2) ...
Setting up libcroco3:amd64 (0.6.11-3) ...
Setting up libp11-kit0:amd64 (0.23.3-2) ...
Setting up libpython2.7:amd64 (2.7.13-2+deb9u2) ...
Setting up python3.5 (3.5.3-1) ...
Setting up libpython3-stdlib:amd64 (3.5.3-1) ...
Setting up libk5crypto3:amd64 (1.15-1+deb9u1) ...
Setting up gettext (0.19.8.1-2) ...
Setting up libgnutls30:amd64 (3.5.8-5+deb9u3) ...
Setting up librtmp1:amd64 (2.4+20151223.gitfa8646d.1-1+b1) ...
Setting up libldap-2.4-2:amd64 (2.4.44+dfsg-5+deb9u1) ...
Setting up libkrb5-3:amd64 (1.15-1+deb9u1) ...
Setting up libgssapi-krb5-2:amd64 (1.15-1+deb9u1) ...
Setting up libcurl3:amd64 (7.52.1-5+deb9u6) ...
Setting up libcurl3-gnutls:amd64 (7.52.1-5+deb9u6) ...
Setting up git (1:2.11.0-3+deb9u3) ...
Setting up curl (7.52.1-5+deb9u6) ...
Setting up python3 (3.5.3-1) ...
Setting up python3-pkg-resources (33.1.1-1) ...
Setting up python3-virtualenv (15.1.0+ds-1) ...
Setting up dh-python (2.20170125) ...
Setting up virtualenv (15.1.0+ds-1) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Processing triggers for ca-certificates (20161130+nmu1) ...
Updating certificates in /etc/ssl/certs...
0 added, 0 removed; done.
Running hooks in /etc/ca-certificates/update.d...
done.
Generating locales (this might take a while)...
  en_US.UTF-8... done
Generation complete.
creating app dir: /app
Removing intermediate container 0742619d2f4b
 ---> 2e554d56f175

Step 11/39 : FROM root as builder
 ---> 2e554d56f175
Step 12/39 : COPY ./builder /tmp/build
 ---> d2a4a1a99678
Step 13/39 : RUN /tmp/build/install-build-env
 ---> Running in c545f647904f
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package python2.7-minimal.
(Reading database ... 12459 files and directories currently installed.)
Preparing to unpack .../python2.7-minimal_2.7.13-2+deb9u2_amd64.deb ...
Unpacking python2.7-minimal (2.7.13-2+deb9u2) ...
Selecting previously unselected package python-minimal.
Preparing to unpack .../python-minimal_2.7.13-2_amd64.deb ...
Unpacking python-minimal (2.7.13-2) ...
Selecting previously unselected package python2.7.
Preparing to unpack .../python2.7_2.7.13-2+deb9u2_amd64.deb ...
Unpacking python2.7 (2.7.13-2+deb9u2) ...
Selecting previously unselected package libpython-stdlib:amd64.
Preparing to unpack .../libpython-stdlib_2.7.13-2_amd64.deb ...
Unpacking libpython-stdlib:amd64 (2.7.13-2) ...
Setting up python2.7-minimal (2.7.13-2+deb9u2) ...
Setting up python-minimal (2.7.13-2) ...
Selecting previously unselected package python.
(Reading database ... 12516 files and directories currently installed.)
Preparing to unpack .../00-python_2.7.13-2_amd64.deb ...
Unpacking python (2.7.13-2) ...
Selecting previously unselected package liblocale-gettext-perl.
Preparing to unpack .../01-liblocale-gettext-perl_1.07-3+b1_amd64.deb ...
Unpacking liblocale-gettext-perl (1.07-3+b1) ...
Selecting previously unselected package libassuan0:amd64.
Preparing to unpack .../02-libassuan0_2.4.3-2_amd64.deb ...
Unpacking libassuan0:amd64 (2.4.3-2) ...
Selecting previously unselected package pinentry-curses.
Preparing to unpack .../03-pinentry-curses_1.0.0-2_amd64.deb ...
Unpacking pinentry-curses (1.0.0-2) ...
Selecting previously unselected package libnpth0:amd64.
Preparing to unpack .../04-libnpth0_1.3-1_amd64.deb ...
Unpacking libnpth0:amd64 (1.3-1) ...
Selecting previously unselected package gnupg-agent.
Preparing to unpack .../05-gnupg-agent_2.1.18-8~deb9u2_amd64.deb ...
Unpacking gnupg-agent (2.1.18-8~deb9u2) ...
Selecting previously unselected package libksba8:amd64.
Preparing to unpack .../06-libksba8_1.3.5-2_amd64.deb ...
Unpacking libksba8:amd64 (1.3.5-2) ...
Selecting previously unselected package gnupg.
Preparing to unpack .../07-gnupg_2.1.18-8~deb9u2_amd64.deb ...
Unpacking gnupg (2.1.18-8~deb9u2) ...
Selecting previously unselected package bzip2.
Preparing to unpack .../08-bzip2_1.0.6-8.1_amd64.deb ...
Unpacking bzip2 (1.0.6-8.1) ...
Selecting previously unselected package manpages.
Preparing to unpack .../09-manpages_4.10-2_all.deb ...
Unpacking manpages (4.10-2) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../10-xz-utils_5.2.2-1.2+b1_amd64.deb ...
Unpacking xz-utils (5.2.2-1.2+b1) ...
Selecting previously unselected package binutils.
Preparing to unpack .../11-binutils_2.28-5_amd64.deb ...
Unpacking binutils (2.28-5) ...
Selecting previously unselected package libc-dev-bin.
Preparing to unpack .../12-libc-dev-bin_2.24-11+deb9u3_amd64.deb ...
Unpacking libc-dev-bin (2.24-11+deb9u3) ...
Selecting previously unselected package linux-libc-dev:amd64.
Preparing to unpack .../13-linux-libc-dev_4.9.88-1+deb9u1_amd64.deb ...
Unpacking linux-libc-dev:amd64 (4.9.88-1+deb9u1) ...
Selecting previously unselected package libc6-dev:amd64.
Preparing to unpack .../14-libc6-dev_2.24-11+deb9u3_amd64.deb ...
Unpacking libc6-dev:amd64 (2.24-11+deb9u3) ...
Selecting previously unselected package libisl15:amd64.
Preparing to unpack .../15-libisl15_0.18-1_amd64.deb ...
Unpacking libisl15:amd64 (0.18-1) ...
Selecting previously unselected package libmpfr4:amd64.
Preparing to unpack .../16-libmpfr4_3.1.5-1_amd64.deb ...
Unpacking libmpfr4:amd64 (3.1.5-1) ...
Selecting previously unselected package libmpc3:amd64.
Preparing to unpack .../17-libmpc3_1.0.3-1+b2_amd64.deb ...
Unpacking libmpc3:amd64 (1.0.3-1+b2) ...
Selecting previously unselected package cpp-6.
Preparing to unpack .../18-cpp-6_6.3.0-18+deb9u1_amd64.deb ...
Unpacking cpp-6 (6.3.0-18+deb9u1) ...
Selecting previously unselected package cpp.
Preparing to unpack .../19-cpp_4%3a6.3.0-4_amd64.deb ...
Unpacking cpp (4:6.3.0-4) ...
Selecting previously unselected package libcc1-0:amd64.
Preparing to unpack .../20-libcc1-0_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libcc1-0:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libitm1:amd64.
Preparing to unpack .../21-libitm1_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libitm1:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libatomic1:amd64.
Preparing to unpack .../22-libatomic1_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libatomic1:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libasan3:amd64.
Preparing to unpack .../23-libasan3_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libasan3:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package liblsan0:amd64.
Preparing to unpack .../24-liblsan0_6.3.0-18+deb9u1_amd64.deb ...
Unpacking liblsan0:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libtsan0:amd64.
Preparing to unpack .../25-libtsan0_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libtsan0:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libubsan0:amd64.
Preparing to unpack .../26-libubsan0_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libubsan0:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libcilkrts5:amd64.
Preparing to unpack .../27-libcilkrts5_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libcilkrts5:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libmpx2:amd64.
Preparing to unpack .../28-libmpx2_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libmpx2:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libquadmath0:amd64.
Preparing to unpack .../29-libquadmath0_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libquadmath0:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package libgcc-6-dev:amd64.
Preparing to unpack .../30-libgcc-6-dev_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libgcc-6-dev:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package gcc-6.
Preparing to unpack .../31-gcc-6_6.3.0-18+deb9u1_amd64.deb ...
Unpacking gcc-6 (6.3.0-18+deb9u1) ...
Selecting previously unselected package gcc.
Preparing to unpack .../32-gcc_4%3a6.3.0-4_amd64.deb ...
Unpacking gcc (4:6.3.0-4) ...
Selecting previously unselected package libstdc++-6-dev:amd64.
Preparing to unpack .../33-libstdc++-6-dev_6.3.0-18+deb9u1_amd64.deb ...
Unpacking libstdc++-6-dev:amd64 (6.3.0-18+deb9u1) ...
Selecting previously unselected package g++-6.
Preparing to unpack .../34-g++-6_6.3.0-18+deb9u1_amd64.deb ...
Unpacking g++-6 (6.3.0-18+deb9u1) ...
Selecting previously unselected package g++.
Preparing to unpack .../35-g++_4%3a6.3.0-4_amd64.deb ...
Unpacking g++ (4:6.3.0-4) ...
Selecting previously unselected package libdpkg-perl.
Preparing to unpack .../36-libdpkg-perl_1.18.24_all.deb ...
Unpacking libdpkg-perl (1.18.24) ...
Selecting previously unselected package patch.
Preparing to unpack .../37-patch_2.7.5-1+b2_amd64.deb ...
Unpacking patch (2.7.5-1+b2) ...
Selecting previously unselected package dpkg-dev.
Preparing to unpack .../38-dpkg-dev_1.18.24_all.deb ...
Unpacking dpkg-dev (1.18.24) ...
Selecting previously unselected package build-essential.
Preparing to unpack .../39-build-essential_12.3_amd64.deb ...
Unpacking build-essential (12.3) ...
Selecting previously unselected package dirmngr.
Preparing to unpack .../40-dirmngr_2.1.18-8~deb9u2_amd64.deb ...
Unpacking dirmngr (2.1.18-8~deb9u2) ...
Selecting previously unselected package libfakeroot:amd64.
Preparing to unpack .../41-libfakeroot_1.21-3.1_amd64.deb ...
Unpacking libfakeroot:amd64 (1.21-3.1) ...
Selecting previously unselected package fakeroot.
Preparing to unpack .../42-fakeroot_1.21-3.1_amd64.deb ...
Unpacking fakeroot (1.21-3.1) ...
Selecting previously unselected package icu-devtools.
Preparing to unpack .../43-icu-devtools_57.1-6+deb9u2_amd64.deb ...
Unpacking icu-devtools (57.1-6+deb9u2) ...
Selecting previously unselected package libalgorithm-diff-perl.
Preparing to unpack .../44-libalgorithm-diff-perl_1.19.03-1_all.deb ...
Unpacking libalgorithm-diff-perl (1.19.03-1) ...
Selecting previously unselected package libalgorithm-diff-xs-perl.
Preparing to unpack .../45-libalgorithm-diff-xs-perl_0.04-4+b2_amd64.deb ...
Unpacking libalgorithm-diff-xs-perl (0.04-4+b2) ...
Selecting previously unselected package libalgorithm-merge-perl.
Preparing to unpack .../46-libalgorithm-merge-perl_0.08-3_all.deb ...
Unpacking libalgorithm-merge-perl (0.08-3) ...
Selecting previously unselected package libexpat1-dev:amd64.
Preparing to unpack .../47-libexpat1-dev_2.2.0-2+deb9u1_amd64.deb ...
Unpacking libexpat1-dev:amd64 (2.2.0-2+deb9u1) ...
Selecting previously unselected package libfile-fcntllock-perl.
Preparing to unpack .../48-libfile-fcntllock-perl_0.22-3+b2_amd64.deb ...
Unpacking libfile-fcntllock-perl (0.22-3+b2) ...
Selecting previously unselected package zlib1g-dev:amd64.
Preparing to unpack .../49-zlib1g-dev_1%3a1.2.8.dfsg-5_amd64.deb ...
Unpacking zlib1g-dev:amd64 (1:1.2.8.dfsg-5) ...
Selecting previously unselected package libpng-dev:amd64.
Preparing to unpack .../50-libpng-dev_1.6.28-1_amd64.deb ...
Unpacking libpng-dev:amd64 (1.6.28-1) ...
Selecting previously unselected package libfreetype6-dev.
Preparing to unpack .../51-libfreetype6-dev_2.6.3-3.2_amd64.deb ...
Unpacking libfreetype6-dev (2.6.3-3.2) ...
Selecting previously unselected package libicu-dev.
Preparing to unpack .../52-libicu-dev_57.1-6+deb9u2_amd64.deb ...
Unpacking libicu-dev (57.1-6+deb9u2) ...
Selecting previously unselected package libjpeg62-turbo-dev:amd64.
Preparing to unpack .../53-libjpeg62-turbo-dev_1%3a1.5.1-2_amd64.deb ...
Unpacking libjpeg62-turbo-dev:amd64 (1:1.5.1-2) ...
Selecting previously unselected package liblcms2-dev:amd64.
Preparing to unpack .../54-liblcms2-dev_2.8-4_amd64.deb ...
Unpacking liblcms2-dev:amd64 (2.8-4) ...
Selecting previously unselected package liblzma-dev:amd64.
Preparing to unpack .../55-liblzma-dev_5.2.2-1.2+b1_amd64.deb ...
Unpacking liblzma-dev:amd64 (5.2.2-1.2+b1) ...
Selecting previously unselected package libpng-tools.
Preparing to unpack .../56-libpng-tools_1.6.28-1_amd64.deb ...
Unpacking libpng-tools (1.6.28-1) ...
Selecting previously unselected package libpython2.7-dev:amd64.
Preparing to unpack .../57-libpython2.7-dev_2.7.13-2+deb9u2_amd64.deb ...
Unpacking libpython2.7-dev:amd64 (2.7.13-2+deb9u2) ...
Selecting previously unselected package libpython-dev:amd64.
Preparing to unpack .../58-libpython-dev_2.7.13-2_amd64.deb ...
Unpacking libpython-dev:amd64 (2.7.13-2) ...
Selecting previously unselected package libjbig-dev:amd64.
Preparing to unpack .../59-libjbig-dev_2.1-3.1+b2_amd64.deb ...
Unpacking libjbig-dev:amd64 (2.1-3.1+b2) ...
Selecting previously unselected package libtiffxx5:amd64.
Preparing to unpack .../60-libtiffxx5_4.0.8-2+deb9u2_amd64.deb ...
Unpacking libtiffxx5:amd64 (4.0.8-2+deb9u2) ...
Selecting previously unselected package libtiff5-dev:amd64.
Preparing to unpack .../61-libtiff5-dev_4.0.8-2+deb9u2_amd64.deb ...
Unpacking libtiff5-dev:amd64 (4.0.8-2+deb9u2) ...
Selecting previously unselected package libwebpmux2:amd64.
Preparing to unpack .../62-libwebpmux2_0.5.2-1_amd64.deb ...
Unpacking libwebpmux2:amd64 (0.5.2-1) ...
Selecting previously unselected package libwebpdemux2:amd64.
Preparing to unpack .../63-libwebpdemux2_0.5.2-1_amd64.deb ...
Unpacking libwebpdemux2:amd64 (0.5.2-1) ...
Selecting previously unselected package libwebp-dev:amd64.
Preparing to unpack .../64-libwebp-dev_0.5.2-1_amd64.deb ...
Unpacking libwebp-dev:amd64 (0.5.2-1) ...
Selecting previously unselected package libxml2-dev:amd64.
Preparing to unpack .../65-libxml2-dev_2.9.4+dfsg1-2.2+deb9u2_amd64.deb ...
Unpacking libxml2-dev:amd64 (2.9.4+dfsg1-2.2+deb9u2) ...
Selecting previously unselected package libxslt1-dev:amd64.
Preparing to unpack .../66-libxslt1-dev_1.1.29-2.1_amd64.deb ...
Unpacking libxslt1-dev:amd64 (1.1.29-2.1) ...
Selecting previously unselected package manpages-dev.
Preparing to unpack .../67-manpages-dev_4.10-2_all.deb ...
Unpacking manpages-dev (4.10-2) ...
Selecting previously unselected package python2.7-dev.
Preparing to unpack .../68-python2.7-dev_2.7.13-2+deb9u2_amd64.deb ...
Unpacking python2.7-dev (2.7.13-2+deb9u2) ...
Selecting previously unselected package python-dev.
Preparing to unpack .../69-python-dev_2.7.13-2_amd64.deb ...
Unpacking python-dev (2.7.13-2) ...
Selecting previously unselected package gnupg-l10n.
Preparing to unpack .../70-gnupg-l10n_2.1.18-8~deb9u2_all.deb ...
Unpacking gnupg-l10n (2.1.18-8~deb9u2) ...
Setting up libquadmath0:amd64 (6.3.0-18+deb9u1) ...
Setting up libnpth0:amd64 (1.3-1) ...
Setting up libatomic1:amd64 (6.3.0-18+deb9u1) ...
Setting up manpages (4.10-2) ...
Setting up libcc1-0:amd64 (6.3.0-18+deb9u1) ...
Setting up libasan3:amd64 (6.3.0-18+deb9u1) ...
Setting up liblcms2-dev:amd64 (2.8-4) ...
Processing triggers for mime-support (3.60) ...
Setting up libcilkrts5:amd64 (6.3.0-18+deb9u1) ...
Setting up libpng-tools (1.6.28-1) ...
Setting up libubsan0:amd64 (6.3.0-18+deb9u1) ...
Setting up libtsan0:amd64 (6.3.0-18+deb9u1) ...
Setting up linux-libc-dev:amd64 (4.9.88-1+deb9u1) ...
Setting up libdpkg-perl (1.18.24) ...
Setting up python2.7 (2.7.13-2+deb9u2) ...
Setting up libwebpmux2:amd64 (0.5.2-1) ...
Setting up libksba8:amd64 (1.3.5-2) ...
Setting up gnupg-l10n (2.1.18-8~deb9u2) ...
Setting up bzip2 (1.0.6-8.1) ...
Setting up libjbig-dev:amd64 (2.1-3.1+b2) ...
Setting up liblsan0:amd64 (6.3.0-18+deb9u1) ...
Setting up libpython-stdlib:amd64 (2.7.13-2) ...
Setting up libfile-fcntllock-perl (0.22-3+b2) ...
Setting up libmpx2:amd64 (6.3.0-18+deb9u1) ...
Setting up libisl15:amd64 (0.18-1) ...
Setting up patch (2.7.5-1+b2) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Setting up xz-utils (5.2.2-1.2+b1) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/lzma.1.gz because associated file /usr/share/man/man1/xz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/unlzma.1.gz because associated file /usr/share/man/man1/unxz.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcat.1.gz because associated file /usr/share/man/man1/xzcat.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzmore.1.gz because associated file /usr/share/man/man1/xzmore.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzless.1.gz because associated file /usr/share/man/man1/xzless.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzdiff.1.gz because associated file /usr/share/man/man1/xzdiff.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzcmp.1.gz because associated file /usr/share/man/man1/xzcmp.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzgrep.1.gz because associated file /usr/share/man/man1/xzgrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzegrep.1.gz because associated file /usr/share/man/man1/xzegrep.1.gz (of link group lzma) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/lzfgrep.1.gz because associated file /usr/share/man/man1/xzfgrep.1.gz (of link group lzma) doesn't exist
Setting up libfakeroot:amd64 (1.21-3.1) ...
Setting up libtiffxx5:amd64 (4.0.8-2+deb9u2) ...
Setting up libalgorithm-diff-perl (1.19.03-1) ...
Setting up liblocale-gettext-perl (1.07-3+b1) ...
Setting up libmpfr4:amd64 (3.1.5-1) ...
Setting up libwebpdemux2:amd64 (0.5.2-1) ...
Setting up libmpc3:amd64 (1.0.3-1+b2) ...
Setting up binutils (2.28-5) ...
Setting up cpp-6 (6.3.0-18+deb9u1) ...
Setting up icu-devtools (57.1-6+deb9u2) ...
Setting up libc-dev-bin (2.24-11+deb9u3) ...
Setting up liblzma-dev:amd64 (5.2.2-1.2+b1) ...
Setting up manpages-dev (4.10-2) ...
Setting up libc6-dev:amd64 (2.24-11+deb9u3) ...
Setting up libassuan0:amd64 (2.4.3-2) ...
Setting up libitm1:amd64 (6.3.0-18+deb9u1) ...
Setting up python (2.7.13-2) ...
Setting up zlib1g-dev:amd64 (1:1.2.8.dfsg-5) ...
Setting up cpp (4:6.3.0-4) ...
Setting up libgcc-6-dev:amd64 (6.3.0-18+deb9u1) ...
Setting up libstdc++-6-dev:amd64 (6.3.0-18+deb9u1) ...
Setting up libicu-dev (57.1-6+deb9u2) ...
Setting up fakeroot (1.21-3.1) ...
update-alternatives: using /usr/bin/fakeroot-sysv to provide /usr/bin/fakeroot (fakeroot) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/fakeroot.1.gz because associated file /usr/share/man/man1/fakeroot-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/man1/faked.1.gz because associated file /usr/share/man/man1/faked-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/es/man1/fakeroot.1.gz because associated file /usr/share/man/es/man1/fakeroot-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/es/man1/faked.1.gz because associated file /usr/share/man/es/man1/faked-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/fakeroot.1.gz because associated file /usr/share/man/fr/man1/fakeroot-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/fr/man1/faked.1.gz because associated file /usr/share/man/fr/man1/faked-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/sv/man1/fakeroot.1.gz because associated file /usr/share/man/sv/man1/fakeroot-sysv.1.gz (of link group fakeroot) doesn't exist
update-alternatives: warning: skip creation of /usr/share/man/sv/man1/faked.1.gz because associated file /usr/share/man/sv/man1/faked-sysv.1.gz (of link group fakeroot) doesn't exist
Setting up gcc-6 (6.3.0-18+deb9u1) ...
Setting up libwebp-dev:amd64 (0.5.2-1) ...
Setting up libxml2-dev:amd64 (2.9.4+dfsg1-2.2+deb9u2) ...
Setting up g++-6 (6.3.0-18+deb9u1) ...
Setting up libalgorithm-merge-perl (0.08-3) ...
Setting up dpkg-dev (1.18.24) ...
Setting up libalgorithm-diff-xs-perl (0.04-4+b2) ...
Setting up libexpat1-dev:amd64 (2.2.0-2+deb9u1) ...
Setting up pinentry-curses (1.0.0-2) ...
Setting up libpython2.7-dev:amd64 (2.7.13-2+deb9u2) ...
Setting up libjpeg62-turbo-dev:amd64 (1:1.5.1-2) ...
Setting up libpng-dev:amd64 (1.6.28-1) ...
Setting up gnupg-agent (2.1.18-8~deb9u2) ...
Setting up dirmngr (2.1.18-8~deb9u2) ...
Setting up python2.7-dev (2.7.13-2+deb9u2) ...
Setting up libxslt1-dev:amd64 (1.1.29-2.1) ...
Setting up libpython-dev:amd64 (2.7.13-2) ...
Setting up python-dev (2.7.13-2) ...
Setting up gnupg (2.1.18-8~deb9u2) ...
Setting up libtiff5-dev:amd64 (4.0.8-2+deb9u2) ...
Setting up gcc (4:6.3.0-4) ...
Setting up libfreetype6-dev (2.6.3-3.2) ...
Setting up g++ (4:6.3.0-4) ...
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
Setting up build-essential (12.3) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Removing intermediate container c545f647904f
 ---> a07a0ed85d18
Step 14/39 : RUN su -c "bash /tmp/build/install-common" $APP_USERNAME
 ---> Running in d3b227ed3566
=> Downloading nvm from git to '/app/nvm'
=> Cloning into '/app/nvm'...
Note: checking out '7ad6d98cedde01809e32d56ab8ced064f6f28175'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b <new-branch-name>

=> Compressing and cleaning up git repository

=> Appending nvm source string to /home/pootle/.bashrc
=> Appending bash_completion source string to /home/pootle/.bashrc
=> Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR="/app/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
Downloading and installing node v10.6.0...
Downloading https://nodejs.org/dist/v10.6.0/node-v10.6.0-linux-x64.tar.xz...
######################################################################## 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v10.6.0 (npm v6.1.0)
Creating default alias: default -> node (-> v10.6.0 *)
Removing intermediate container d3b227ed3566
 ---> 2e29fcc48658
Step 15/39 : ARG APP_PKG=Pootle==2.9rc1
 ---> Running in 7e3c7ff2082b
Removing intermediate container 7e3c7ff2082b
 ---> a252d52845d8
Step 16/39 : ARG APP_REQUIREMENTS=https://raw.githubusercontent.com/translate/pootle/master/requirements
 ---> Running in 9d8141dfaac8
Removing intermediate container 9d8141dfaac8
 ---> a6f1f4b3ba41
Step 17/39 : ARG BUILD_IMAGE
 ---> Running in f8288e5429ae
Removing intermediate container f8288e5429ae
 ---> 825635085005
Step 18/39 : RUN su -c "bash /tmp/build/install-virtualenv" $APP_USERNAME
 ---> Running in dd41ba532f1c
Installing package: Pootle==2.9rc1
New python executable in /app/bin/python2
Also creating executable in /app/bin/python
Installing setuptools, pkg_resources, pip, wheel...done.
Running virtualenv with interpreter /usr/bin/python2
DEPRECATION: Dependency Links processing has been deprecated and will be removed in a future release.
Removing intermediate container dd41ba532f1c
 ---> dbfb15f97f48
Step 19/39 : ARG BUILD_INSTALL_PRE
 ---> Running in 281e457ec5cc
Removing intermediate container 281e457ec5cc
 ---> 9f88d44d7f86
Step 20/39 : ARG BUILD_INSTALL_PKGS
 ---> Running in 61c9e0f72048
Removing intermediate container 61c9e0f72048
 ---> a074faa1ad8a
Step 21/39 : RUN /tmp/build/install-build
 ---> Running in 689671a99bff
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libpq5:amd64.
(Reading database ... 19542 files and directories currently installed.)
Preparing to unpack .../libpq5_9.6.7-0+deb9u1_amd64.deb ...
Unpacking libpq5:amd64 (9.6.7-0+deb9u1) ...
Selecting previously unselected package libpq-dev.
Preparing to unpack .../libpq-dev_9.6.7-0+deb9u1_amd64.deb ...
Unpacking libpq-dev (9.6.7-0+deb9u1) ...
Setting up libpq5:amd64 (9.6.7-0+deb9u1) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Setting up libpq-dev (9.6.7-0+deb9u1) ...
Removing intermediate container 689671a99bff
 ---> 7771e257ef85
Step 22/39 : ARG BUILD_INSTALL_EGGS
 ---> Running in 0f440f46dd50
Removing intermediate container 0f440f46dd50
 ---> e42f3d709ccc
Step 23/39 : ARG BUILD_INSTALL_SETTINGS=./settings.conf
 ---> Running in e0ebcdc55d10
Removing intermediate container e0ebcdc55d10
 ---> 8e9c64683f7b
Step 24/39 : COPY $BUILD_INSTALL_SETTINGS /tmp/settings.conf
 ---> f8c22e18280d
Step 25/39 : RUN su -c "bash /tmp/build/install-eggs" $APP_USERNAME
 ---> Running in bd90cf395dbb
Installing extra eggs: psycopg2-binary
Removing intermediate container bd90cf395dbb
 ---> 5c8036d3b1bb

Step 26/39 : FROM root
 ---> 2e554d56f175
Step 27/39 : ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
 ---> Running in 7fb03995fd88
Removing intermediate container 7fb03995fd88
 ---> ae67fb1e24aa
Step 28/39 : EXPOSE 8000
 ---> Running in 49319248877b
Removing intermediate container 49319248877b
 ---> 06891091fe00
Step 29/39 : COPY ./app /tmp/build
 ---> d30170588a8f
Step 30/39 : COPY ./bin /tmp/build/bin
 ---> f62e38816d05
Step 31/39 : RUN /tmp/build/install-app-common
 ---> Running in 796bf8e7b922
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package gosu.
(Reading database ... 12459 files and directories currently installed.)
Preparing to unpack .../gosu_1.10-1+b2_amd64.deb ...
Unpacking gosu (1.10-1+b2) ...
Setting up gosu (1.10-1+b2) ...
Removing intermediate container 796bf8e7b922
 ---> 03785be0dd5f
Step 32/39 : ARG BASE_INSTALL_PRE
 ---> Running in bb1da9d14e79
Removing intermediate container bb1da9d14e79
 ---> 7eef8b49054a
Step 33/39 : ARG BASE_INSTALL_PKGS
 ---> Running in 8216e538f2c8
Removing intermediate container 8216e538f2c8
 ---> 7d5f61663ee2
Step 34/39 : RUN /tmp/build/install-app
 ---> Running in e7f0821776bd
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package netbase.
(Reading database ... 12464 files and directories currently installed.)
Preparing to unpack .../0-netbase_5.4_all.deb ...
Unpacking netbase (5.4) ...
Selecting previously unselected package libbsd0:amd64.
Preparing to unpack .../1-libbsd0_0.8.3-1_amd64.deb ...
Unpacking libbsd0:amd64 (0.8.3-1) ...
Selecting previously unselected package libedit2:amd64.
Preparing to unpack .../2-libedit2_3.1-20160903-3_amd64.deb ...
Unpacking libedit2:amd64 (3.1-20160903-3) ...
Selecting previously unselected package libpq5:amd64.
Preparing to unpack .../3-libpq5_9.6.7-0+deb9u1_amd64.deb ...
Unpacking libpq5:amd64 (9.6.7-0+deb9u1) ...
Selecting previously unselected package postgresql-client-common.
Preparing to unpack .../4-postgresql-client-common_181+deb9u1_all.deb ...
Unpacking postgresql-client-common (181+deb9u1) ...
Selecting previously unselected package postgresql-client-9.6.
Preparing to unpack .../5-postgresql-client-9.6_9.6.7-0+deb9u1_amd64.deb ...
Unpacking postgresql-client-9.6 (9.6.7-0+deb9u1) ...
Selecting previously unselected package postgresql-client.
Preparing to unpack .../6-postgresql-client_9.6+181+deb9u1_all.deb ...
Unpacking postgresql-client (9.6+181+deb9u1) ...
Setting up libbsd0:amd64 (0.8.3-1) ...
Setting up libpq5:amd64 (9.6.7-0+deb9u1) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Setting up netbase (5.4) ...
Setting up libedit2:amd64 (3.1-20160903-3) ...
Setting up postgresql-client-common (181+deb9u1) ...
Setting up postgresql-client-9.6 (9.6.7-0+deb9u1) ...
update-alternatives: using /usr/share/postgresql/9.6/man/man1/psql.1.gz to provide /usr/share/man/man1/psql.1.gz (psql.1.gz) in auto mode
Setting up postgresql-client (9.6+181+deb9u1) ...
Processing triggers for libc-bin (2.24-11+deb9u3) ...
Removing intermediate container e7f0821776bd
 ---> 58cfde25394b
Step 35/39 : COPY --chown=pootle:pootle --from=builder "$APP_DIR" "$APP_DIR"
 ---> 02987766b114
Step 36/39 : ARG APP_DB_ENV
 ---> Running in de77c9d65c02
Removing intermediate container de77c9d65c02
 ---> eba520affa1e
Step 37/39 : ARG BUILD_IMAGE
 ---> Running in 151a283fa4a8
Removing intermediate container 151a283fa4a8
 ---> 7d86f82433f1
Step 38/39 : ENV APP_DB_ENV=$APP_DB_ENV     BUILD_IMAGE=$BUILD_IMAGE
 ---> Running in 513c3ebcee76
Removing intermediate container 513c3ebcee76
 ---> bb5787eee106
Step 39/39 : RUN /tmp/build/post-install
 ---> Running in 390650853fca
Removing intermediate container 390650853fca
 ---> 20e36db99a3a

Successfully built 20e36db99a3a
Successfully tagged translate/pootle:demo
WARNING: Image for service demo was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating pootle-playground_postgres_1      ... done
Creating pootle-playground_redis_1         ... done
Creating pootle-playground_db-demo_1       ... done
Creating pootle-playground_elasticsearch_1 ... done
Creating pootle-playground_demo_1          ... done
Attaching to pootle-playground_postgres_1, pootle-playground_redis_1, pootle-playground_db-demo_1, pootle-playground_elasticsearch_1, pootle-playground_demo_1
postgres_1       | The files belonging to this database system will be owned by user "postgres".
postgres_1       | This user must also own the server process.
postgres_1       | 
postgres_1       | The database cluster will be initialized with locale "en_US.utf8".
postgres_1       | The default database encoding has accordingly been set to "UTF8".
postgres_1       | The default text search configuration will be set to "english".
postgres_1       | 
postgres_1       | Data page checksums are disabled.
postgres_1       | 
postgres_1       | fixing permissions on existing directory /var/lib/postgresql/data ... ok
postgres_1       | creating subdirectories ... ok
postgres_1       | selecting default max_connections ... 100
postgres_1       | selecting default shared_buffers ... 128MB
postgres_1       | selecting dynamic shared memory implementation ... posix
postgres_1       | creating configuration files ... ok
postgres_1       | creating template1 database in /var/lib/postgresql/data/base/1 ... ok
postgres_1       | initializing pg_authid ... ok
postgres_1       | initializing dependencies ... ok
postgres_1       | creating system views ... ok
postgres_1       | loading system objects' descriptions ... ok
postgres_1       | creating collations ... sh: locale: not found
postgres_1       | ok
postgres_1       | No usable system locales were found.
postgres_1       | Use the option "--debug" to see details.
postgres_1       | creating conversions ... ok
postgres_1       | creating dictionaries ... ok
postgres_1       | setting privileges on built-in objects ... ok
postgres_1       | creating information schema ... ok
postgres_1       | loading PL/pgSQL server-side language ... ok
postgres_1       | vacuuming database template1 ... ok
postgres_1       | copying template1 to template0 ... ok
postgres_1       | copying template1 to postgres ... ok
postgres_1       | syncing data to disk ... ok
postgres_1       | 
postgres_1       | Success. You can now start the database server using:
postgres_1       | 
postgres_1       |     postgres -D /var/lib/postgresql/data
postgres_1       | or
postgres_1       |     pg_ctl -D /var/lib/postgresql/data -l logfile start
postgres_1       | 
postgres_1       | 
postgres_1       | WARNING: enabling "trust" authentication for local connections
postgres_1       | You can change this by editing pg_hba.conf or using the option -A, or
postgres_1       | --auth-local and --auth-host, the next time you run initdb.
postgres_1       | waiting for server to start....LOG:  database system was shut down at 2018-07-07 14:10:34 UTC
postgres_1       | LOG:  MultiXact member wraparound protections are now enabled
postgres_1       | LOG:  database system is ready to accept connections
postgres_1       | LOG:  autovacuum launcher started
redis_1          | 1:C 07 Jul 14:10:34.091 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1          | 1:C 07 Jul 14:10:34.091 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1          | 1:C 07 Jul 14:10:34.091 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
redis_1          | 1:M 07 Jul 14:10:34.092 * Running mode=standalone, port=6379.
redis_1          | 1:M 07 Jul 14:10:34.092 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1          | 1:M 07 Jul 14:10:34.092 # Server initialized
redis_1          | 1:M 07 Jul 14:10:34.092 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1          | 1:M 07 Jul 14:10:34.092 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1          | 1:M 07 Jul 14:10:34.092 * Ready to accept connections
db-demo_1        | The files belonging to this database system will be owned by user "postgres".
db-demo_1        | This user must also own the server process.
db-demo_1        | 
db-demo_1        | The database cluster will be initialized with locale "en_US.utf8".
db-demo_1        | The default database encoding has accordingly been set to "UTF8".
db-demo_1        | The default text search configuration will be set to "english".
db-demo_1        | 
db-demo_1        | Data page checksums are disabled.
db-demo_1        | 
elasticsearch_1  | [2018-07-07T14:10:38,877][WARN ][o.e.b.JNANatives         ] Unable to lock JVM Memory: error=12, reason=Cannot allocate memory
db-demo_1        | fixing permissions on existing directory /var/lib/postgresql/data ... ok
elasticsearch_1  | [2018-07-07T14:10:38,879][WARN ][o.e.b.JNANatives         ] This can result in part of the JVM being swapped out.
elasticsearch_1  | [2018-07-07T14:10:38,879][WARN ][o.e.b.JNANatives         ] Increase RLIMIT_MEMLOCK, soft limit: 65536, hard limit: 65536
demo_1           | Usage: gosu user-spec command [args]
demo_1           |    ie: gosu tianon bash
demo_1           |        gosu nobody:root bash -c 'whoami && id'
demo_1           |        gosu 1000:1 id
demo_1           | 
demo_1           | gosu version: 1.10 (go1.7.4 on linux/amd64; gc)
demo_1           |      license: GPL-3 (full text at https://github.com/tianon/gosu)
demo_1           | 
elasticsearch_1  | [2018-07-07T14:10:38,879][WARN ][o.e.b.JNANatives         ] These can be adjusted by modifying /etc/security/limits.conf, for example: 
elasticsearch_1  | 	# allow user 'elasticsearch' mlockall
elasticsearch_1  | 	elasticsearch soft memlock unlimited
elasticsearch_1  | 	elasticsearch hard memlock unlimited
elasticsearch_1  | [2018-07-07T14:10:38,879][WARN ][o.e.b.JNANatives         ] If you are logged in interactively, you will have to re-login for the new limits to take effect.
db-demo_1        | creating subdirectories ... ok
elasticsearch_1  | [2018-07-07T14:10:39,039][INFO ][o.e.n.Node               ] [] initializing ...
db-demo_1        | selecting default max_connections ... 100
elasticsearch_1  | [2018-07-07T14:10:39,525][INFO ][o.e.e.NodeEnvironment    ] [wDdFWoo] using [1] data paths, mounts [[/ (none)]], net usable_space [11.2gb], net total_space [351.8gb], types [aufs]
db-demo_1        | selecting default shared_buffers ... 128MB
db-demo_1        | selecting dynamic shared memory implementation ... posix
db-demo_1        | creating configuration files ... ok
db-demo_1        | creating template1 database in /var/lib/postgresql/data/base/1 ... ok
db-demo_1        | initializing pg_authid ... ok
db-demo_1        | initializing dependencies ... ok
db-demo_1        | creating system views ... ok
db-demo_1        | loading system objects' descriptions ... ok
elasticsearch_1  | [2018-07-07T14:10:39,526][INFO ][o.e.e.NodeEnvironment    ] [wDdFWoo] heap size [494.9mb], compressed ordinary object pointers [true]
elasticsearch_1  | [2018-07-07T14:10:39,528][INFO ][o.e.n.Node               ] node name [wDdFWoo] derived from node ID [wDdFWoobRGyeeiYrkXF_UA]; set [node.name] to override
elasticsearch_1  | [2018-07-07T14:10:39,528][INFO ][o.e.n.Node               ] version[6.2.3], pid[1], build[c59ff00/2018-03-13T10:06:29.741383Z], OS[Linux/4.4.0-34-generic/amd64], JVM[Oracle Corporation/OpenJDK 64-Bit Server VM/1.8.0_161/25.161-b14]
elasticsearch_1  | [2018-07-07T14:10:39,528][INFO ][o.e.n.Node               ] JVM arguments [-Xms1g, -Xmx1g, -XX:+UseConcMarkSweepGC, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -XX:+AlwaysPreTouch, -Xss1m, -Djava.awt.headless=true, -Dfile.encoding=UTF-8, -Djna.nosys=true, -XX:-OmitStackTraceInFastThrow, -Dio.netty.noUnsafe=true, -Dio.netty.noKeySetOptimization=true, -Dio.netty.recycler.maxCapacityPerThread=0, -Dlog4j.shutdownHookEnabled=false, -Dlog4j2.disable.jmx=true, -Djava.io.tmpdir=/tmp/elasticsearch.K9Cmrt94, -XX:+HeapDumpOnOutOfMemoryError, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -Xloggc:logs/gc.log, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=32, -XX:GCLogFileSize=64m, -Des.cgroups.hierarchy.override=/, -Xms512m, -Xmx512m, -Des.path.home=/usr/share/elasticsearch, -Des.path.conf=/usr/share/elasticsearch/config]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [aggs-matrix-stats]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [analysis-common]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [ingest-common]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-expression]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-mustache]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-painless]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [mapper-extras]
db-demo_1        | creating collations ... sh: locale: not found
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [parent-join]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [percolator]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [rank-eval]
elasticsearch_1  | [2018-07-07T14:10:40,203][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [reindex]
elasticsearch_1  | [2018-07-07T14:10:40,204][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [repository-url]
elasticsearch_1  | [2018-07-07T14:10:40,204][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [transport-netty4]
db-demo_1        | ok
db-demo_1        | No usable system locales were found.
db-demo_1        | Use the option "--debug" to see details.
db-demo_1        | creating conversions ... ok
db-demo_1        | creating dictionaries ... ok
db-demo_1        | setting privileges on built-in objects ... ok
db-demo_1        | creating information schema ... ok
db-demo_1        | loading PL/pgSQL server-side language ... ok
db-demo_1        | vacuuming database template1 ... ok
elasticsearch_1  | [2018-07-07T14:10:40,204][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [tribe]
elasticsearch_1  | [2018-07-07T14:10:40,204][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded plugin [ingest-geoip]
elasticsearch_1  | [2018-07-07T14:10:40,204][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded plugin [ingest-user-agent]
db-demo_1        | copying template1 to template0 ... ok
db-demo_1        | copying template1 to postgres ... ok
db-demo_1        | syncing data to disk ... ok
db-demo_1        | 
db-demo_1        | Success. You can now start the database server using:
db-demo_1        | 
db-demo_1        |     postgres -D /var/lib/postgresql/data
db-demo_1        | or
db-demo_1        |     pg_ctl -D /var/lib/postgresql/data -l logfile start
db-demo_1        | 
db-demo_1        | 
db-demo_1        | WARNING: enabling "trust" authentication for local connections
db-demo_1        | You can change this by editing pg_hba.conf or using the option -A, or
db-demo_1        | --auth-local and --auth-host, the next time you run initdb.
db-demo_1        | waiting for server to start....LOG:  could not bind IPv6 socket: Address not available
db-demo_1        | HINT:  Is another postmaster already running on port 5432? If not, wait a few seconds and retry.
db-demo_1        | LOG:  database system was shut down at 2018-07-07 14:10:36 UTC
db-demo_1        | LOG:  MultiXact member wraparound protections are now enabled
db-demo_1        | LOG:  database system is ready to accept connections
db-demo_1        | LOG:  autovacuum launcher started
postgres_1       |  done
postgres_1       | server started
db-demo_1        |  done
db-demo_1        | server started
elasticsearch_1  | [2018-07-07T14:10:42,458][INFO ][o.e.d.DiscoveryModule    ] [wDdFWoo] using discovery type [zen]
pootle-playground_demo_1 exited with code 1
elasticsearch_1  | [2018-07-07T14:10:42,879][INFO ][o.e.n.Node               ] initialized
elasticsearch_1  | [2018-07-07T14:10:42,879][INFO ][o.e.n.Node               ] [wDdFWoo] starting ...
elasticsearch_1  | [2018-07-07T14:10:42,994][INFO ][o.e.t.TransportService   ] [wDdFWoo] publish_address {127.0.0.1:9300}, bound_addresses {127.0.0.1:9300}
elasticsearch_1  | [2018-07-07T14:10:43,004][WARN ][o.e.b.BootstrapChecks    ] [wDdFWoo] memory locking requested for elasticsearch process but memory is not locked
postgres_1       | CREATE DATABASE
postgres_1       | 
postgres_1       | CREATE ROLE
db-demo_1        | CREATE DATABASE
db-demo_1        | 
postgres_1       | 
postgres_1       | 
postgres_1       | /usr/local/bin/docker-entrypoint.sh: ignoring /docker-entrypoint-initdb.d/*
postgres_1       | 
postgres_1       | waiting for server to shut down....LOG:  received fast shutdown request
postgres_1       | LOG:  aborting any active transactions
postgres_1       | LOG:  autovacuum launcher shutting down
postgres_1       | LOG:  shutting down
db-demo_1        | CREATE ROLE
db-demo_1        | 
db-demo_1        | 
db-demo_1        | /usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/demo.sql.gz
db-demo_1        | SET
db-demo_1        | SET
db-demo_1        | SET
db-demo_1        | SET
db-demo_1        |  set_config 
db-demo_1        | ------------
db-demo_1        |  
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | SET
db-demo_1        | SET
db-demo_1        | CREATE EXTENSION
db-demo_1        | COMMENT
db-demo_1        | SET
db-demo_1        | SET
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
postgres_1       | LOG:  database system is shut down
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
postgres_1       |  done
postgres_1       | server stopped
postgres_1       | 
postgres_1       | PostgreSQL init process complete; ready for start up.
postgres_1       | 
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
postgres_1       | LOG:  database system was shut down at 2018-07-07 14:10:43 UTC
db-demo_1        | CREATE TABLE
postgres_1       | LOG:  MultiXact member wraparound protections are now enabled
db-demo_1        | ALTER TABLE
postgres_1       | LOG:  database system is ready to accept connections
postgres_1       | LOG:  autovacuum launcher started
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
elasticsearch_1  | [2018-07-07T14:10:46,044][INFO ][o.e.c.s.MasterService    ] [wDdFWoo] zen-disco-elected-as-master ([0] nodes joined), reason: new_master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{aBdnt046RLG56nBt293JWw}{127.0.0.1}{127.0.0.1:9300}
elasticsearch_1  | [2018-07-07T14:10:46,051][INFO ][o.e.c.s.ClusterApplierService] [wDdFWoo] new_master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{aBdnt046RLG56nBt293JWw}{127.0.0.1}{127.0.0.1:9300}, reason: apply cluster state (from master [master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{aBdnt046RLG56nBt293JWw}{127.0.0.1}{127.0.0.1:9300} committed version [1] source [zen-disco-elected-as-master ([0] nodes joined)]])
db-demo_1        | ALTER SEQUENCE
elasticsearch_1  | [2018-07-07T14:10:46,074][INFO ][o.e.h.n.Netty4HttpServerTransport] [wDdFWoo] publish_address {172.24.0.4:9200}, bound_addresses {0.0.0.0:9200}
elasticsearch_1  | [2018-07-07T14:10:46,074][INFO ][o.e.n.Node               ] [wDdFWoo] started
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
elasticsearch_1  | [2018-07-07T14:10:46,339][INFO ][o.e.g.GatewayService     ] [wDdFWoo] recovered [0] indices into cluster_state
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | CREATE TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER SEQUENCE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | COPY 1
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 4
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       4
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 130
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     130
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 42
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      42
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 219
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     219
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        | COPY 1
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 271
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     271
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 161
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     161
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 4
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       4
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 5
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       5
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 2
db-demo_1        | COPY 2
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       2
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       2
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 66
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      66
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 6
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       6
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 6
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       6
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 5
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       5
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 74
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      74
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 5
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       7
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 429
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     429
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 74
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      74
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 10097
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |   10097
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 74
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      74
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 3
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       3
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 69323
db-demo_1        | COPY 59558
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |   59558
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |   69323
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 69323
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |   69323
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 396
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |     396
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 66
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |      66
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 2375
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |    2375
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 65171
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |   65171
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 1
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | COPY 0
db-demo_1        |  setval 
db-demo_1        | --------
db-demo_1        |       1
db-demo_1        | (1 row)
db-demo_1        | 
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
elasticsearch_1  | [2018-07-07T14:11:16,077][WARN ][o.e.c.r.a.DiskThresholdMonitor] [wDdFWoo] flood stage disk watermark [95%] exceeded on [wDdFWoobRGyeeiYrkXF_UA][wDdFWoo][/usr/share/elasticsearch/data/nodes/0] free: 11gb[3.1%], all indices on this node will marked read-only
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | CREATE INDEX
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | ALTER TABLE
db-demo_1        | REVOKE
db-demo_1        | REVOKE
db-demo_1        | GRANT
db-demo_1        | GRANT
db-demo_1        | 
db-demo_1        | 
db-demo_1        | waiting for server to shut down....LOG:  received fast shutdown request
db-demo_1        | LOG:  aborting any active transactions
db-demo_1        | LOG:  autovacuum launcher shutting down
db-demo_1        | LOG:  shutting down
db-demo_1        | ...LOG:  database system is shut down
db-demo_1        |  done
db-demo_1        | server stopped
db-demo_1        | 
db-demo_1        | PostgreSQL init process complete; ready for start up.
db-demo_1        | 
db-demo_1        | LOG:  database system was shut down at 2018-07-07 14:11:22 UTC
db-demo_1        | LOG:  MultiXact member wraparound protections are now enabled
db-demo_1        | LOG:  database system is ready to accept connections
db-demo_1        | LOG:  autovacuum launcher started



# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [11:11:27]
$ docker ps
CONTAINER ID        IMAGE                                                     COMMAND                  CREATED             STATUS              PORTS                              NAMES
959fc2db944e        translate/pootle:db-demo                                  "docker-entrypoint.s…"   3 minutes ago       Up 3 minutes        5432/tcp                           pootle-playground_db-demo_1
16c23fc2d7cc        docker.elastic.co/elasticsearch/elasticsearch-oss:6.2.3   "/usr/local/bin/dock…"   3 minutes ago       Up 3 minutes        0.0.0.0:9200->9200/tcp, 9300/tcp   pootle-playground_elasticsearch_1
cdea7258f88b        redis:alpine                                              "docker-entrypoint.s…"   3 minutes ago       Up 3 minutes        6379/tcp                           pootle-playground_redis_1
a9d946133d19        postgres:9.4-alpine                                       "docker-entrypoint.s…"   3 minutes ago       Up 3 minutes        5432/tcp                           pootle-playground_postgres_1

^CGracefully stopping... (press Ctrl+C again to force)
Stopping pootle-playground_db-demo_1       ... done
Stopping pootle-playground_elasticsearch_1 ... done
Stopping pootle-playground_redis_1         ... done
Stopping pootle-playground_postgres_1      ... done

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [11:33:38]
$ docker-compose -f docker-compose.demo.yml up 
Starting pootle-playground_postgres_1      ... done
Starting pootle-playground_db-demo_1       ... done
Starting pootle-playground_elasticsearch_1 ... done
Starting pootle-playground_redis_1         ... done
Starting pootle-playground_demo_1          ... done
Attaching to pootle-playground_db-demo_1, pootle-playground_postgres_1, pootle-playground_elasticsearch_1, pootle-playground_redis_1, pootle-playground_demo_1
postgres_1       | LOG:  database system was shut down at 2018-07-07 14:33:36 UTC
db-demo_1        | LOG:  database system was shut down at 2018-07-07 14:33:36 UTC
db-demo_1        | LOG:  MultiXact member wraparound protections are now enabled
db-demo_1        | LOG:  database system is ready to accept connections
db-demo_1        | LOG:  autovacuum launcher started
postgres_1       | LOG:  MultiXact member wraparound protections are now enabled
postgres_1       | LOG:  database system is ready to accept connections
redis_1          | 1:C 07 Jul 14:34:03.660 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1          | 1:C 07 Jul 14:34:03.660 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1          | 1:C 07 Jul 14:34:03.660 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
demo_1           | Usage: gosu user-spec command [args]
demo_1           |    ie: gosu tianon bash
demo_1           |        gosu nobody:root bash -c 'whoami && id'
demo_1           |        gosu 1000:1 id
demo_1           | 
demo_1           | gosu version: 1.10 (go1.7.4 on linux/amd64; gc)
demo_1           |      license: GPL-3 (full text at https://github.com/tianon/gosu)
demo_1           | 
redis_1          | 1:M 07 Jul 14:34:03.661 * Running mode=standalone, port=6379.
postgres_1       | LOG:  autovacuum launcher started
redis_1          | 1:M 07 Jul 14:34:03.661 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1          | 1:M 07 Jul 14:34:03.661 # Server initialized
redis_1          | 1:M 07 Jul 14:34:03.661 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1          | 1:M 07 Jul 14:34:03.661 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1          | 1:M 07 Jul 14:34:03.661 * DB loaded from disk: 0.000 seconds
redis_1          | 1:M 07 Jul 14:34:03.661 * Ready to accept connections
elasticsearch_1  | [2018-07-07T14:34:05,202][WARN ][o.e.b.JNANatives         ] Unable to lock JVM Memory: error=12, reason=Cannot allocate memory
elasticsearch_1  | [2018-07-07T14:34:05,204][WARN ][o.e.b.JNANatives         ] This can result in part of the JVM being swapped out.
elasticsearch_1  | [2018-07-07T14:34:05,204][WARN ][o.e.b.JNANatives         ] Increase RLIMIT_MEMLOCK, soft limit: 65536, hard limit: 65536
elasticsearch_1  | [2018-07-07T14:34:05,204][WARN ][o.e.b.JNANatives         ] These can be adjusted by modifying /etc/security/limits.conf, for example: 
elasticsearch_1  | 	# allow user 'elasticsearch' mlockall
elasticsearch_1  | 	elasticsearch soft memlock unlimited
elasticsearch_1  | 	elasticsearch hard memlock unlimited
elasticsearch_1  | [2018-07-07T14:34:05,204][WARN ][o.e.b.JNANatives         ] If you are logged in interactively, you will have to re-login for the new limits to take effect.
elasticsearch_1  | [2018-07-07T14:34:05,350][INFO ][o.e.n.Node               ] [] initializing ...
pootle-playground_demo_1 exited with code 1
elasticsearch_1  | [2018-07-07T14:34:05,491][INFO ][o.e.e.NodeEnvironment    ] [wDdFWoo] using [1] data paths, mounts [[/ (none)]], net usable_space [60gb], net total_space [351.8gb], types [aufs]
elasticsearch_1  | [2018-07-07T14:34:05,491][INFO ][o.e.e.NodeEnvironment    ] [wDdFWoo] heap size [494.9mb], compressed ordinary object pointers [true]
elasticsearch_1  | [2018-07-07T14:34:05,492][INFO ][o.e.n.Node               ] node name [wDdFWoo] derived from node ID [wDdFWoobRGyeeiYrkXF_UA]; set [node.name] to override
elasticsearch_1  | [2018-07-07T14:34:05,492][INFO ][o.e.n.Node               ] version[6.2.3], pid[1], build[c59ff00/2018-03-13T10:06:29.741383Z], OS[Linux/4.4.0-34-generic/amd64], JVM[Oracle Corporation/OpenJDK 64-Bit Server VM/1.8.0_161/25.161-b14]
elasticsearch_1  | [2018-07-07T14:34:05,493][INFO ][o.e.n.Node               ] JVM arguments [-Xms1g, -Xmx1g, -XX:+UseConcMarkSweepGC, -XX:CMSInitiatingOccupancyFraction=75, -XX:+UseCMSInitiatingOccupancyOnly, -XX:+AlwaysPreTouch, -Xss1m, -Djava.awt.headless=true, -Dfile.encoding=UTF-8, -Djna.nosys=true, -XX:-OmitStackTraceInFastThrow, -Dio.netty.noUnsafe=true, -Dio.netty.noKeySetOptimization=true, -Dio.netty.recycler.maxCapacityPerThread=0, -Dlog4j.shutdownHookEnabled=false, -Dlog4j2.disable.jmx=true, -Djava.io.tmpdir=/tmp/elasticsearch.HPOa6jS7, -XX:+HeapDumpOnOutOfMemoryError, -XX:+PrintGCDetails, -XX:+PrintGCDateStamps, -XX:+PrintTenuringDistribution, -XX:+PrintGCApplicationStoppedTime, -Xloggc:logs/gc.log, -XX:+UseGCLogFileRotation, -XX:NumberOfGCLogFiles=32, -XX:GCLogFileSize=64m, -Des.cgroups.hierarchy.override=/, -Xms512m, -Xmx512m, -Des.path.home=/usr/share/elasticsearch, -Des.path.conf=/usr/share/elasticsearch/config]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [aggs-matrix-stats]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [analysis-common]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [ingest-common]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-expression]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-mustache]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [lang-painless]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [mapper-extras]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [parent-join]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [percolator]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [rank-eval]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [reindex]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [repository-url]
elasticsearch_1  | [2018-07-07T14:34:06,058][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [transport-netty4]
elasticsearch_1  | [2018-07-07T14:34:06,059][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded module [tribe]
elasticsearch_1  | [2018-07-07T14:34:06,059][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded plugin [ingest-geoip]
elasticsearch_1  | [2018-07-07T14:34:06,059][INFO ][o.e.p.PluginsService     ] [wDdFWoo] loaded plugin [ingest-user-agent]
elasticsearch_1  | [2018-07-07T14:34:08,224][INFO ][o.e.d.DiscoveryModule    ] [wDdFWoo] using discovery type [zen]
elasticsearch_1  | [2018-07-07T14:34:08,646][INFO ][o.e.n.Node               ] initialized
elasticsearch_1  | [2018-07-07T14:34:08,647][INFO ][o.e.n.Node               ] [wDdFWoo] starting ...
elasticsearch_1  | [2018-07-07T14:34:08,759][INFO ][o.e.t.TransportService   ] [wDdFWoo] publish_address {127.0.0.1:9300}, bound_addresses {127.0.0.1:9300}
elasticsearch_1  | [2018-07-07T14:34:08,769][WARN ][o.e.b.BootstrapChecks    ] [wDdFWoo] memory locking requested for elasticsearch process but memory is not locked
elasticsearch_1  | [2018-07-07T14:34:11,811][INFO ][o.e.c.s.MasterService    ] [wDdFWoo] zen-disco-elected-as-master ([0] nodes joined), reason: new_master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{rqbUHGhxSDekKNgxZlbvGA}{127.0.0.1}{127.0.0.1:9300}
elasticsearch_1  | [2018-07-07T14:34:11,818][INFO ][o.e.c.s.ClusterApplierService] [wDdFWoo] new_master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{rqbUHGhxSDekKNgxZlbvGA}{127.0.0.1}{127.0.0.1:9300}, reason: apply cluster state (from master [master {wDdFWoo}{wDdFWoobRGyeeiYrkXF_UA}{rqbUHGhxSDekKNgxZlbvGA}{127.0.0.1}{127.0.0.1:9300} committed version [1] source [zen-disco-elected-as-master ([0] nodes joined)]])
elasticsearch_1  | [2018-07-07T14:34:11,833][INFO ][o.e.h.n.Netty4HttpServerTransport] [wDdFWoo] publish_address {172.24.0.5:9200}, bound_addresses {0.0.0.0:9200}
elasticsearch_1  | [2018-07-07T14:34:11,833][INFO ][o.e.n.Node               ] [wDdFWoo] started
elasticsearch_1  | [2018-07-07T14:34:11,897][INFO ][o.e.g.GatewayService     ] [wDdFWoo] recovered [0] indices into cluster_state

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [11:38:04]
$ docker ps --filter "status=exited"          
CONTAINER ID        IMAGE                      COMMAND                   CREATED             STATUS                      PORTS               NAMES
c0f31b6db6fb        translate/pootle:demo      "/usr/local/bin/entr…"    27 minutes ago      Exited (1) 4 minutes ago                        pootle-playground_demo_1
(...)

## fititnt: Note: humm, lets do it again, just to be sure it's just something more simple


# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [12:10:04]
$ docker system prune                         
WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache
Are you sure you want to continue? [y/N] y
Deleted Containers:
0960d7f01f98abeae7f2fd856aeabde1e27ac42e75d1599dc480d3e680aa46f2
848d44d1ac2c894066b10abf31de8e1bbe6b2dc9f328cd538f177e3307419084
bd4814c5b6800efeed5f05ec3d4fed1a9b1a65b150e71199dd3232ca431838ec
b535da2e1edeacb8ef735de1b2a8c376919c80f79f89ba2218fe8cfb2e82f743
5ce291949e8868f1fd46b29e38ef4ad61e4adb971835c8064a1ab46d90ebc836

Deleted Networks:
pootle-playground_default

Total reclaimed space: 20.8kB

# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [12:10:09]
$ clear


# fititnt at bravo in /alligo/code/fititnt/pootle-playground on git:master x [12:33:58]
$ cd ~/tmp

# fititnt at bravo in ~/tmp [12:34:05]
$ git clone git@github.com:1drop/pootle.git
Cloning into 'pootle'...
remote: Counting objects: 142, done.
remote: Total 142 (delta 0), reused 0 (delta 0), pack-reused 142
Receiving objects: 100% (142/142), 301.48 KiB | 320.00 KiB/s, done.
Resolving deltas: 100% (46/46), done.
Checking connectivity... done.

# fititnt at bravo in ~/tmp [12:34:59]
$ cd pootle 

# fititnt at bravo in ~/tmp/pootle on git:master o [12:35:02]
$ docker-compose up -d
Creating network "pootle_default" with the default driver
Creating volume "pootle_mysql-data" with default driver
Creating volume "pootle_l10n-ter" with default driver
Creating volume "pootle_pootle-po" with default driver
Creating volume "pootle_pootle-git" with default driver
Pulling mysql (mariadb:10)...
10: Pulling from library/mariadb
1c7fe136a31e: Pull complete
ecb0394ab02f: Pull complete
ece3821473b4: Pull complete
b090b58fe851: Pull complete
fdc67e5246f1: Pull complete
7b0408b2b91f: Pull complete
02c7ce6b6eea: Pull complete
eb3d50d2d52c: Pull complete
800dafb39329: Pull complete
b98513c56899: Pull complete
f7407e397090: Pull complete
Digest: sha256:f2085c2176ba6294cf73033b344a420faa2ddae1b97b6795c101552e86284ba3
Status: Downloaded newer image for mariadb:10
Pulling redis (redis:)...
latest: Pulling from library/redis
683abbb4ea60: Already exists
259238e792d8: Pull complete
78399601c709: Pull complete
f397da474601: Pull complete
c57de4edc390: Pull complete
b2ea05c9d9a1: Pull complete
Digest: sha256:5534b92530acc653f0721ebfa14f31bc718f68bf9070cbba25bb00bc7aacfabb
Status: Downloaded newer image for redis:latest
Building pootle
Step 1/24 : FROM webdevops/bootstrap:ubuntu-16.04
ubuntu-16.04: Pulling from webdevops/bootstrap
b234f539f7a1: Pull complete
55172d420b43: Pull complete
5ba5bbeb6b91: Pull complete
43ae2841ad7a: Pull complete
f6c9c6de4190: Pull complete
8b6c485e187c: Pull complete
92f906135b98: Pull complete
Digest: sha256:c774f7c4573668d8fbbd8fbaa62b24407da716babc428575993e44323416bc24
Status: Downloaded newer image for webdevops/bootstrap:ubuntu-16.04
 ---> 9be74f962afd
Step 2/24 : MAINTAINER Hans Hoechtl "hhoechtl@1drop.de"
 ---> Running in 9a45a5132261
Removing intermediate container 9a45a5132261
 ---> 9490aaf28ee9
Step 3/24 : ENV POOTLE_VERSION="2.7.6"
 ---> Running in 886333a47526
Removing intermediate container 886333a47526
 ---> 5f44b6c6be23
Step 4/24 : RUN chmod -R 2777 /tmp
 ---> Running in bac7acf39c6d
Removing intermediate container bac7acf39c6d
 ---> 8a830db6c5b0
Step 5/24 : RUN /usr/local/bin/apt-install build-essential   swig   git   xmlstarlet   xsltproc   zip   cron   supervisor   unzip   mysql-client   openssh-client   python-dev   libxml2-dev   libssl-dev   libxslt1-dev   zlib1g-dev   libmysqlclient-dev   python-pip   python-xapian   xapian-tools   python-setuptools
 ---> Running in b104a071aa6d
Get:1 http://security.ubuntu.com/ubuntu xenial-security InRelease [107 kB]
Get:2 http://archive.ubuntu.com/ubuntu xenial InRelease [247 kB]
Get:3 http://security.ubuntu.com/ubuntu xenial-security/universe Sources [83.5 kB]
Get:4 http://archive.ubuntu.com/ubuntu xenial-updates InRelease [109 kB]
Get:5 http://security.ubuntu.com/ubuntu xenial-security/main amd64 Packages [660 kB]
Get:6 http://archive.ubuntu.com/ubuntu xenial-backports InRelease [107 kB]
Get:7 http://archive.ubuntu.com/ubuntu xenial/universe Sources [9802 kB]
Get:8 http://security.ubuntu.com/ubuntu xenial-security/restricted amd64 Packages [12.7 kB]
Get:9 http://security.ubuntu.com/ubuntu xenial-security/universe amd64 Packages [452 kB]
Get:10 http://security.ubuntu.com/ubuntu xenial-security/multiverse amd64 Packages [3735 B]
Get:11 http://archive.ubuntu.com/ubuntu xenial/main amd64 Packages [1558 kB]
Get:12 http://archive.ubuntu.com/ubuntu xenial/restricted amd64 Packages [14.1 kB]
Get:13 http://archive.ubuntu.com/ubuntu xenial/universe amd64 Packages [9827 kB]
Get:14 http://archive.ubuntu.com/ubuntu xenial/multiverse amd64 Packages [176 kB]
Get:15 http://archive.ubuntu.com/ubuntu xenial-updates/universe Sources [260 kB]
Get:16 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages [1038 kB]
Get:17 http://archive.ubuntu.com/ubuntu xenial-updates/restricted amd64 Packages [13.1 kB]
Get:18 http://archive.ubuntu.com/ubuntu xenial-updates/universe amd64 Packages [825 kB]
Get:19 http://archive.ubuntu.com/ubuntu xenial-updates/multiverse amd64 Packages [18.8 kB]
Get:20 http://archive.ubuntu.com/ubuntu xenial-backports/main amd64 Packages [7321 B]
Get:21 http://archive.ubuntu.com/ubuntu xenial-backports/universe amd64 Packages [8088 B]
Fetched 25.3 MB in 6s (3822 kB/s)
Reading package lists...
Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  binutils bzip2 cpp cpp-5 dpkg-dev g++ g++-5 gcc gcc-5 gcc-5-base git-man
  icu-devtools libaio1 libasan2 libatomic1 libbsd0 libc-dev-bin libc6-dev
  libcc1-0 libcilkrts5 libdpkg-perl libedit2 liberror-perl libexpat1
  libexpat1-dev libgcc-5-dev libgdbm3 libgomp1 libicu-dev libicu55 libisl15
  libitm1 liblsan0 libmpc3 libmpfr4 libmpx0 libmysqlclient20 libnuma1
  libperl5.22 libpython-dev libpython-stdlib libpython2.7 libpython2.7-dev
  libpython2.7-minimal libpython2.7-stdlib libquadmath0 libssl1.0.0
  libstdc++-5-dev libstdc++6 libtsan0 libubsan0 libxapian22v5 libxml2
  libxslt1.1 linux-libc-dev make mime-support mysql-client-5.7
  mysql-client-core-5.7 mysql-common patch perl perl-modules-5.22 python
  python-meld3 python-minimal python-pip-whl python-pkg-resources python2.7
  python2.7-dev python2.7-minimal swig3.0 xz-utils
Suggested packages:
  binutils-doc bzip2-doc cpp-doc gcc-5-locales anacron logrotate checksecurity
  exim4 | postfix | mail-transport-agent debian-keyring g++-multilib
  g++-5-multilib gcc-5-doc libstdc++6-5-dbg gcc-multilib manpages-dev autoconf
  automake libtool flex bison gdb gcc-doc gcc-5-multilib libgcc1-dbg
  libgomp1-dbg libitm1-dbg libatomic1-dbg libasan2-dbg liblsan0-dbg
  libtsan0-dbg libubsan0-dbg libcilkrts5-dbg libmpx0-dbg libquadmath0-dbg
  gettext-base git-daemon-run | git-daemon-sysvinit git-doc git-el git-email
  git-gui gitk gitweb git-arch git-cvs git-mediawiki git-svn glibc-doc icu-doc
  libstdc++-5-doc pkg-config make-doc ssh-askpass libpam-ssh keychain
  monkeysphere ed diffutils-doc perl-doc libterm-readline-gnu-perl
  | libterm-readline-perl-perl python-doc python-tk python-setuptools-doc
  xapian-doc python2.7-doc binfmt-support supervisor-doc swig-doc
  swig-examples swig3.0-examples swig3.0-doc
Recommended packages:
  fakeroot libalgorithm-merge-perl less rsync manpages manpages-dev
  libfile-fcntllock-perl libssl-doc xml-core file xauth netbase rename
  python-all-dev python-wheel
The following NEW packages will be installed:
  binutils build-essential bzip2 cpp cpp-5 cron dpkg-dev g++ g++-5 gcc gcc-5
  git git-man icu-devtools libaio1 libasan2 libatomic1 libbsd0 libc-dev-bin
  libc6-dev libcc1-0 libcilkrts5 libdpkg-perl libedit2 liberror-perl libexpat1
  libexpat1-dev libgcc-5-dev libgdbm3 libgomp1 libicu-dev libicu55 libisl15
  libitm1 liblsan0 libmpc3 libmpfr4 libmpx0 libmysqlclient-dev
  libmysqlclient20 libnuma1 libperl5.22 libpython-dev libpython-stdlib
  libpython2.7 libpython2.7-dev libpython2.7-minimal libpython2.7-stdlib
  libquadmath0 libssl-dev libstdc++-5-dev libtsan0 libubsan0 libxapian22v5
  libxml2 libxml2-dev libxslt1-dev libxslt1.1 linux-libc-dev make mime-support
  mysql-client mysql-client-5.7 mysql-client-core-5.7 mysql-common
  openssh-client patch perl perl-modules-5.22 python python-dev python-meld3
  python-minimal python-pip python-pip-whl python-pkg-resources
  python-setuptools python-xapian python2.7 python2.7-dev python2.7-minimal
  supervisor swig swig3.0 unzip xapian-tools xmlstarlet xsltproc xz-utils zip
  zlib1g-dev
The following packages will be upgraded:
  gcc-5-base libssl1.0.0 libstdc++6
3 upgraded, 91 newly installed, 0 to remove and 5 not upgraded.
Need to get 116 MB of archives.
After this operation, 455 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu xenial/main amd64 cron amd64 3.0pl1-128ubuntu2 [68.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu xenial/main amd64 libgdbm3 amd64 1.8.3-13.1 [16.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 perl-modules-5.22 all 5.22.1-9ubuntu0.5 [2645 kB]
Get:4 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libperl5.22 amd64 5.22.1-9ubuntu0.5 [3396 kB]
Get:5 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 perl amd64 5.22.1-9ubuntu0.5 [238 kB]
Get:6 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython2.7-minimal amd64 2.7.12-1ubuntu0~16.04.3 [340 kB]
Get:7 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python2.7-minimal amd64 2.7.12-1ubuntu0~16.04.3 [1261 kB]
Get:8 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python-minimal amd64 2.7.12-1~16.04 [28.1 kB]
Get:9 http://archive.ubuntu.com/ubuntu xenial/main amd64 mime-support all 3.59ubuntu1 [31.0 kB]
Get:10 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libexpat1 amd64 2.1.0-7ubuntu0.16.04.3 [71.2 kB]
Get:11 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libssl1.0.0 amd64 1.0.2g-1ubuntu4.13 [1083 kB]
Get:12 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython2.7-stdlib amd64 2.7.12-1ubuntu0~16.04.3 [1880 kB]
Get:13 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python2.7 amd64 2.7.12-1ubuntu0~16.04.3 [224 kB]
Get:14 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython-stdlib amd64 2.7.12-1~16.04 [7768 B]
Get:15 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python amd64 2.7.12-1~16.04 [137 kB]
Get:16 http://archive.ubuntu.com/ubuntu xenial/main amd64 libmpfr4 amd64 3.1.4-1 [191 kB]
Get:17 http://archive.ubuntu.com/ubuntu xenial/main amd64 libmpc3 amd64 1.0.3-1 [39.7 kB]
Get:18 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 gcc-5-base amd64 5.4.0-6ubuntu1~16.04.10 [17.3 kB]
Get:19 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libstdc++6 amd64 5.4.0-6ubuntu1~16.04.10 [393 kB]
Get:20 http://archive.ubuntu.com/ubuntu xenial/main amd64 bzip2 amd64 1.0.6-8 [32.7 kB]
Get:21 http://archive.ubuntu.com/ubuntu xenial/main amd64 libbsd0 amd64 0.8.2-1 [41.7 kB]
Get:22 http://archive.ubuntu.com/ubuntu xenial/main amd64 libedit2 amd64 3.1-20150325-1ubuntu2 [76.5 kB]
Get:23 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libicu55 amd64 55.1-7ubuntu0.4 [7646 kB]
Get:24 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libnuma1 amd64 2.0.11-1ubuntu1.1 [21.0 kB]
Get:25 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libxml2 amd64 2.9.3+dfsg1-1ubuntu0.5 [697 kB]
Get:26 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 openssh-client amd64 1:7.2p2-4ubuntu2.4 [589 kB]
Get:27 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 binutils amd64 2.26.1-1ubuntu1~16.04.6 [2311 kB]
Get:28 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libc-dev-bin amd64 2.23-0ubuntu10 [68.7 kB]
Get:29 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 linux-libc-dev amd64 4.4.0-130.156 [866 kB]
Get:30 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libc6-dev amd64 2.23-0ubuntu10 [2079 kB]
Get:31 http://archive.ubuntu.com/ubuntu xenial/main amd64 libisl15 amd64 0.16.1-1 [524 kB]
Get:32 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 cpp-5 amd64 5.4.0-6ubuntu1~16.04.10 [7671 kB]
Get:33 http://archive.ubuntu.com/ubuntu xenial/main amd64 cpp amd64 4:5.3.1-1ubuntu1 [27.7 kB]
Get:34 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libcc1-0 amd64 5.4.0-6ubuntu1~16.04.10 [38.8 kB]
Get:35 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libgomp1 amd64 5.4.0-6ubuntu1~16.04.10 [55.1 kB]
Get:36 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libitm1 amd64 5.4.0-6ubuntu1~16.04.10 [27.4 kB]
Get:37 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libatomic1 amd64 5.4.0-6ubuntu1~16.04.10 [8888 B]
Get:38 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libasan2 amd64 5.4.0-6ubuntu1~16.04.10 [264 kB]
Get:39 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 liblsan0 amd64 5.4.0-6ubuntu1~16.04.10 [105 kB]
Get:40 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libtsan0 amd64 5.4.0-6ubuntu1~16.04.10 [244 kB]
Get:41 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libubsan0 amd64 5.4.0-6ubuntu1~16.04.10 [95.3 kB]
Get:42 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libcilkrts5 amd64 5.4.0-6ubuntu1~16.04.10 [40.1 kB]
Get:43 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libmpx0 amd64 5.4.0-6ubuntu1~16.04.10 [9764 B]
Get:44 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libquadmath0 amd64 5.4.0-6ubuntu1~16.04.10 [131 kB]
Get:45 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libgcc-5-dev amd64 5.4.0-6ubuntu1~16.04.10 [2228 kB]
Get:46 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 gcc-5 amd64 5.4.0-6ubuntu1~16.04.10 [8426 kB]
Get:47 http://archive.ubuntu.com/ubuntu xenial/main amd64 gcc amd64 4:5.3.1-1ubuntu1 [5244 B]
Get:48 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libstdc++-5-dev amd64 5.4.0-6ubuntu1~16.04.10 [1426 kB]
Get:49 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 g++-5 amd64 5.4.0-6ubuntu1~16.04.10 [8319 kB]
Get:50 http://archive.ubuntu.com/ubuntu xenial/main amd64 g++ amd64 4:5.3.1-1ubuntu1 [1504 B]
Get:51 http://archive.ubuntu.com/ubuntu xenial/main amd64 make amd64 4.1-6 [151 kB]
Get:52 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libdpkg-perl all 1.18.4ubuntu1.4 [195 kB]
Get:53 http://archive.ubuntu.com/ubuntu xenial/main amd64 xz-utils amd64 5.1.1alpha+20120614-2ubuntu2 [78.8 kB]
Get:54 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 patch amd64 2.7.5-1ubuntu0.16.04.1 [90.5 kB]
Get:55 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 dpkg-dev all 1.18.4ubuntu1.4 [584 kB]
Get:56 http://archive.ubuntu.com/ubuntu xenial/main amd64 build-essential amd64 12.1ubuntu2 [4758 B]
Get:57 http://archive.ubuntu.com/ubuntu xenial/main amd64 liberror-perl all 0.17-1.2 [19.6 kB]
Get:58 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 git-man all 1:2.7.4-0ubuntu1.4 [736 kB]
Get:59 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 git amd64 1:2.7.4-0ubuntu1.4 [3158 kB]
Get:60 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 icu-devtools amd64 55.1-7ubuntu0.4 [166 kB]
Get:61 http://archive.ubuntu.com/ubuntu xenial/main amd64 libaio1 amd64 0.3.110-2 [6356 B]
Get:62 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libexpat1-dev amd64 2.1.0-7ubuntu0.16.04.3 [115 kB]
Get:63 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libicu-dev amd64 55.1-7ubuntu0.4 [8566 kB]
Get:64 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 mysql-common all 5.7.22-0ubuntu0.16.04.1 [15.4 kB]
Get:65 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libmysqlclient20 amd64 5.7.22-0ubuntu0.16.04.1 [809 kB]
Get:66 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 zlib1g-dev amd64 1:1.2.8.dfsg-2ubuntu4.1 [168 kB]
Get:67 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libmysqlclient-dev amd64 5.7.22-0ubuntu0.16.04.1 [1159 kB]
Get:68 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython2.7 amd64 2.7.12-1ubuntu0~16.04.3 [1070 kB]
Get:69 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython2.7-dev amd64 2.7.12-1ubuntu0~16.04.3 [27.8 MB]
Get:70 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libpython-dev amd64 2.7.12-1~16.04 [7840 B]
Get:71 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libssl-dev amd64 1.0.2g-1ubuntu4.13 [1342 kB]
Get:72 http://archive.ubuntu.com/ubuntu xenial/main amd64 libxapian22v5 amd64 1.2.22-2 [589 kB]
Get:73 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libxml2-dev amd64 2.9.3+dfsg1-1ubuntu0.5 [741 kB]
Get:74 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libxslt1.1 amd64 1.1.28-2.1ubuntu0.1 [145 kB]
Get:75 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 libxslt1-dev amd64 1.1.28-2.1ubuntu0.1 [406 kB]
Get:76 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 mysql-client-core-5.7 amd64 5.7.22-0ubuntu0.16.04.1 [6425 kB]
Get:77 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 mysql-client-5.7 amd64 5.7.22-0ubuntu0.16.04.1 [1673 kB]
Get:78 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 mysql-client all 5.7.22-0ubuntu0.16.04.1 [10.0 kB]
Get:79 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python2.7-dev amd64 2.7.12-1ubuntu0~16.04.3 [276 kB]
Get:80 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 python-dev amd64 2.7.12-1~16.04 [1186 B]
Get:81 http://archive.ubuntu.com/ubuntu xenial-updates/universe amd64 python-pip-whl all 8.1.1-2ubuntu0.4 [1110 kB]
Get:82 http://archive.ubuntu.com/ubuntu xenial-updates/universe amd64 python-pip all 8.1.1-2ubuntu0.4 [144 kB]
Get:83 http://archive.ubuntu.com/ubuntu xenial/main amd64 python-pkg-resources all 20.7.0-1 [108 kB]
Get:84 http://archive.ubuntu.com/ubuntu xenial/main amd64 python-setuptools all 20.7.0-1 [169 kB]
Get:85 http://archive.ubuntu.com/ubuntu xenial/main amd64 python-xapian amd64 1.2.22-2build1 [207 kB]
Get:86 http://archive.ubuntu.com/ubuntu xenial/universe amd64 swig3.0 amd64 3.0.8-0ubuntu3 [995 kB]
Get:87 http://archive.ubuntu.com/ubuntu xenial/universe amd64 swig amd64 3.0.8-0ubuntu3 [6278 B]
Get:88 http://archive.ubuntu.com/ubuntu xenial/main amd64 unzip amd64 6.0-20ubuntu1 [158 kB]
Get:89 http://archive.ubuntu.com/ubuntu xenial/universe amd64 xapian-tools amd64 1.2.22-2 [89.0 kB]
Get:90 http://archive.ubuntu.com/ubuntu xenial/universe amd64 xmlstarlet amd64 1.6.1-1ubuntu1 [96.0 kB]
Get:91 http://archive.ubuntu.com/ubuntu xenial-updates/main amd64 xsltproc amd64 1.1.28-2.1ubuntu0.1 [13.4 kB]
Get:92 http://archive.ubuntu.com/ubuntu xenial/main amd64 zip amd64 3.0-11 [158 kB]
Get:93 http://archive.ubuntu.com/ubuntu xenial/universe amd64 python-meld3 all 1.0.2-2 [30.9 kB]
Get:94 http://archive.ubuntu.com/ubuntu xenial-updates/universe amd64 supervisor all 3.2.0-2ubuntu0.2 [253 kB]
debconf: delaying package configuration, since apt-utils is not installed
Fetched 116 MB in 16s (6982 kB/s)
Selecting previously unselected package cron.
(Reading database ... 5257 files and directories currently installed.)
Preparing to unpack .../cron_3.0pl1-128ubuntu2_amd64.deb ...
Unpacking cron (3.0pl1-128ubuntu2) ...
Selecting previously unselected package libgdbm3:amd64.
Preparing to unpack .../libgdbm3_1.8.3-13.1_amd64.deb ...
Unpacking libgdbm3:amd64 (1.8.3-13.1) ...
Selecting previously unselected package perl-modules-5.22.
Preparing to unpack .../perl-modules-5.22_5.22.1-9ubuntu0.5_all.deb ...
Unpacking perl-modules-5.22 (5.22.1-9ubuntu0.5) ...
Selecting previously unselected package libperl5.22:amd64.
Preparing to unpack .../libperl5.22_5.22.1-9ubuntu0.5_amd64.deb ...
Unpacking libperl5.22:amd64 (5.22.1-9ubuntu0.5) ...
Selecting previously unselected package perl.
Preparing to unpack .../perl_5.22.1-9ubuntu0.5_amd64.deb ...
Unpacking perl (5.22.1-9ubuntu0.5) ...
Selecting previously unselected package libpython2.7-minimal:amd64.
Preparing to unpack .../libpython2.7-minimal_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking libpython2.7-minimal:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package python2.7-minimal.
Preparing to unpack .../python2.7-minimal_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking python2.7-minimal (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package python-minimal.
Preparing to unpack .../python-minimal_2.7.12-1~16.04_amd64.deb ...
Unpacking python-minimal (2.7.12-1~16.04) ...
Selecting previously unselected package mime-support.
Preparing to unpack .../mime-support_3.59ubuntu1_all.deb ...
Unpacking mime-support (3.59ubuntu1) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../libexpat1_2.1.0-7ubuntu0.16.04.3_amd64.deb ...
Unpacking libexpat1:amd64 (2.1.0-7ubuntu0.16.04.3) ...
Preparing to unpack .../libssl1.0.0_1.0.2g-1ubuntu4.13_amd64.deb ...
Unpacking libssl1.0.0:amd64 (1.0.2g-1ubuntu4.13) over (1.0.2g-1ubuntu4.12) ...
Selecting previously unselected package libpython2.7-stdlib:amd64.
Preparing to unpack .../libpython2.7-stdlib_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking libpython2.7-stdlib:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package python2.7.
Preparing to unpack .../python2.7_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking python2.7 (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package libpython-stdlib:amd64.
Preparing to unpack .../libpython-stdlib_2.7.12-1~16.04_amd64.deb ...
Unpacking libpython-stdlib:amd64 (2.7.12-1~16.04) ...
Processing triggers for systemd (229-4ubuntu21.2) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Setting up libpython2.7-minimal:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Setting up python2.7-minimal (2.7.12-1ubuntu0~16.04.3) ...
Setting up python-minimal (2.7.12-1~16.04) ...
Selecting previously unselected package python.
(Reading database ... 7849 files and directories currently installed.)
Preparing to unpack .../python_2.7.12-1~16.04_amd64.deb ...
Unpacking python (2.7.12-1~16.04) ...
Selecting previously unselected package libmpfr4:amd64.
Preparing to unpack .../libmpfr4_3.1.4-1_amd64.deb ...
Unpacking libmpfr4:amd64 (3.1.4-1) ...
Selecting previously unselected package libmpc3:amd64.
Preparing to unpack .../libmpc3_1.0.3-1_amd64.deb ...
Unpacking libmpc3:amd64 (1.0.3-1) ...
Preparing to unpack .../gcc-5-base_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking gcc-5-base:amd64 (5.4.0-6ubuntu1~16.04.10) over (5.4.0-6ubuntu1~16.04.9) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Setting up gcc-5-base:amd64 (5.4.0-6ubuntu1~16.04.10) ...
(Reading database ... 7926 files and directories currently installed.)
Preparing to unpack .../libstdc++6_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libstdc++6:amd64 (5.4.0-6ubuntu1~16.04.10) over (5.4.0-6ubuntu1~16.04.9) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Setting up libstdc++6:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Selecting previously unselected package bzip2.
(Reading database ... 7926 files and directories currently installed.)
Preparing to unpack .../bzip2_1.0.6-8_amd64.deb ...
Unpacking bzip2 (1.0.6-8) ...
Selecting previously unselected package libbsd0:amd64.
Preparing to unpack .../libbsd0_0.8.2-1_amd64.deb ...
Unpacking libbsd0:amd64 (0.8.2-1) ...
Selecting previously unselected package libedit2:amd64.
Preparing to unpack .../libedit2_3.1-20150325-1ubuntu2_amd64.deb ...
Unpacking libedit2:amd64 (3.1-20150325-1ubuntu2) ...
Selecting previously unselected package libicu55:amd64.
Preparing to unpack .../libicu55_55.1-7ubuntu0.4_amd64.deb ...
Unpacking libicu55:amd64 (55.1-7ubuntu0.4) ...
Selecting previously unselected package libnuma1:amd64.
Preparing to unpack .../libnuma1_2.0.11-1ubuntu1.1_amd64.deb ...
Unpacking libnuma1:amd64 (2.0.11-1ubuntu1.1) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../libxml2_2.9.3+dfsg1-1ubuntu0.5_amd64.deb ...
Unpacking libxml2:amd64 (2.9.3+dfsg1-1ubuntu0.5) ...
Selecting previously unselected package openssh-client.
Preparing to unpack .../openssh-client_1%3a7.2p2-4ubuntu2.4_amd64.deb ...
Unpacking openssh-client (1:7.2p2-4ubuntu2.4) ...
Selecting previously unselected package binutils.
Preparing to unpack .../binutils_2.26.1-1ubuntu1~16.04.6_amd64.deb ...
Unpacking binutils (2.26.1-1ubuntu1~16.04.6) ...
Selecting previously unselected package libc-dev-bin.
Preparing to unpack .../libc-dev-bin_2.23-0ubuntu10_amd64.deb ...
Unpacking libc-dev-bin (2.23-0ubuntu10) ...
Selecting previously unselected package linux-libc-dev:amd64.
Preparing to unpack .../linux-libc-dev_4.4.0-130.156_amd64.deb ...
Unpacking linux-libc-dev:amd64 (4.4.0-130.156) ...
Selecting previously unselected package libc6-dev:amd64.
Preparing to unpack .../libc6-dev_2.23-0ubuntu10_amd64.deb ...
Unpacking libc6-dev:amd64 (2.23-0ubuntu10) ...
Selecting previously unselected package libisl15:amd64.
Preparing to unpack .../libisl15_0.16.1-1_amd64.deb ...
Unpacking libisl15:amd64 (0.16.1-1) ...
Selecting previously unselected package cpp-5.
Preparing to unpack .../cpp-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking cpp-5 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package cpp.
Preparing to unpack .../cpp_4%3a5.3.1-1ubuntu1_amd64.deb ...
Unpacking cpp (4:5.3.1-1ubuntu1) ...
Selecting previously unselected package libcc1-0:amd64.
Preparing to unpack .../libcc1-0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libcc1-0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libgomp1:amd64.
Preparing to unpack .../libgomp1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libgomp1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libitm1:amd64.
Preparing to unpack .../libitm1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libitm1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libatomic1:amd64.
Preparing to unpack .../libatomic1_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libatomic1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libasan2:amd64.
Preparing to unpack .../libasan2_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libasan2:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package liblsan0:amd64.
Preparing to unpack .../liblsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking liblsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libtsan0:amd64.
Preparing to unpack .../libtsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libtsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libubsan0:amd64.
Preparing to unpack .../libubsan0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libubsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libcilkrts5:amd64.
Preparing to unpack .../libcilkrts5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libcilkrts5:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libmpx0:amd64.
Preparing to unpack .../libmpx0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libmpx0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libquadmath0:amd64.
Preparing to unpack .../libquadmath0_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libquadmath0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package libgcc-5-dev:amd64.
Preparing to unpack .../libgcc-5-dev_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libgcc-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package gcc-5.
Preparing to unpack .../gcc-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking gcc-5 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package gcc.
Preparing to unpack .../gcc_4%3a5.3.1-1ubuntu1_amd64.deb ...
Unpacking gcc (4:5.3.1-1ubuntu1) ...
Selecting previously unselected package libstdc++-5-dev:amd64.
Preparing to unpack .../libstdc++-5-dev_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking libstdc++-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package g++-5.
Preparing to unpack .../g++-5_5.4.0-6ubuntu1~16.04.10_amd64.deb ...
Unpacking g++-5 (5.4.0-6ubuntu1~16.04.10) ...
Selecting previously unselected package g++.
Preparing to unpack .../g++_4%3a5.3.1-1ubuntu1_amd64.deb ...
Unpacking g++ (4:5.3.1-1ubuntu1) ...
Selecting previously unselected package make.
Preparing to unpack .../archives/make_4.1-6_amd64.deb ...
Unpacking make (4.1-6) ...
Selecting previously unselected package libdpkg-perl.
Preparing to unpack .../libdpkg-perl_1.18.4ubuntu1.4_all.deb ...
Unpacking libdpkg-perl (1.18.4ubuntu1.4) ...
Selecting previously unselected package xz-utils.
Preparing to unpack .../xz-utils_5.1.1alpha+20120614-2ubuntu2_amd64.deb ...
Unpacking xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
Selecting previously unselected package patch.
Preparing to unpack .../patch_2.7.5-1ubuntu0.16.04.1_amd64.deb ...
Unpacking patch (2.7.5-1ubuntu0.16.04.1) ...
Selecting previously unselected package dpkg-dev.
Preparing to unpack .../dpkg-dev_1.18.4ubuntu1.4_all.deb ...
Unpacking dpkg-dev (1.18.4ubuntu1.4) ...
Selecting previously unselected package build-essential.
Preparing to unpack .../build-essential_12.1ubuntu2_amd64.deb ...
Unpacking build-essential (12.1ubuntu2) ...
Selecting previously unselected package liberror-perl.
Preparing to unpack .../liberror-perl_0.17-1.2_all.deb ...
Unpacking liberror-perl (0.17-1.2) ...
Selecting previously unselected package git-man.
Preparing to unpack .../git-man_1%3a2.7.4-0ubuntu1.4_all.deb ...
Unpacking git-man (1:2.7.4-0ubuntu1.4) ...
Selecting previously unselected package git.
Preparing to unpack .../git_1%3a2.7.4-0ubuntu1.4_amd64.deb ...
Unpacking git (1:2.7.4-0ubuntu1.4) ...
Selecting previously unselected package icu-devtools.
Preparing to unpack .../icu-devtools_55.1-7ubuntu0.4_amd64.deb ...
Unpacking icu-devtools (55.1-7ubuntu0.4) ...
Selecting previously unselected package libaio1:amd64.
Preparing to unpack .../libaio1_0.3.110-2_amd64.deb ...
Unpacking libaio1:amd64 (0.3.110-2) ...
Selecting previously unselected package libexpat1-dev:amd64.
Preparing to unpack .../libexpat1-dev_2.1.0-7ubuntu0.16.04.3_amd64.deb ...
Unpacking libexpat1-dev:amd64 (2.1.0-7ubuntu0.16.04.3) ...
Selecting previously unselected package libicu-dev:amd64.
Preparing to unpack .../libicu-dev_55.1-7ubuntu0.4_amd64.deb ...
Unpacking libicu-dev:amd64 (55.1-7ubuntu0.4) ...
Selecting previously unselected package mysql-common.
Preparing to unpack .../mysql-common_5.7.22-0ubuntu0.16.04.1_all.deb ...
Unpacking mysql-common (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package libmysqlclient20:amd64.
Preparing to unpack .../libmysqlclient20_5.7.22-0ubuntu0.16.04.1_amd64.deb ...
Unpacking libmysqlclient20:amd64 (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package zlib1g-dev:amd64.
Preparing to unpack .../zlib1g-dev_1%3a1.2.8.dfsg-2ubuntu4.1_amd64.deb ...
Unpacking zlib1g-dev:amd64 (1:1.2.8.dfsg-2ubuntu4.1) ...
Selecting previously unselected package libmysqlclient-dev.
Preparing to unpack .../libmysqlclient-dev_5.7.22-0ubuntu0.16.04.1_amd64.deb ...
Unpacking libmysqlclient-dev (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package libpython2.7:amd64.
Preparing to unpack .../libpython2.7_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking libpython2.7:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package libpython2.7-dev:amd64.
Preparing to unpack .../libpython2.7-dev_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking libpython2.7-dev:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package libpython-dev:amd64.
Preparing to unpack .../libpython-dev_2.7.12-1~16.04_amd64.deb ...
Unpacking libpython-dev:amd64 (2.7.12-1~16.04) ...
Selecting previously unselected package libssl-dev:amd64.
Preparing to unpack .../libssl-dev_1.0.2g-1ubuntu4.13_amd64.deb ...
Unpacking libssl-dev:amd64 (1.0.2g-1ubuntu4.13) ...
Selecting previously unselected package libxapian22v5:amd64.
Preparing to unpack .../libxapian22v5_1.2.22-2_amd64.deb ...
Unpacking libxapian22v5:amd64 (1.2.22-2) ...
Selecting previously unselected package libxml2-dev:amd64.
Preparing to unpack .../libxml2-dev_2.9.3+dfsg1-1ubuntu0.5_amd64.deb ...
Unpacking libxml2-dev:amd64 (2.9.3+dfsg1-1ubuntu0.5) ...
Selecting previously unselected package libxslt1.1:amd64.
Preparing to unpack .../libxslt1.1_1.1.28-2.1ubuntu0.1_amd64.deb ...
Unpacking libxslt1.1:amd64 (1.1.28-2.1ubuntu0.1) ...
Selecting previously unselected package libxslt1-dev:amd64.
Preparing to unpack .../libxslt1-dev_1.1.28-2.1ubuntu0.1_amd64.deb ...
Unpacking libxslt1-dev:amd64 (1.1.28-2.1ubuntu0.1) ...
Selecting previously unselected package mysql-client-core-5.7.
Preparing to unpack .../mysql-client-core-5.7_5.7.22-0ubuntu0.16.04.1_amd64.deb ...
Unpacking mysql-client-core-5.7 (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package mysql-client-5.7.
Preparing to unpack .../mysql-client-5.7_5.7.22-0ubuntu0.16.04.1_amd64.deb ...
Unpacking mysql-client-5.7 (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package mysql-client.
Preparing to unpack .../mysql-client_5.7.22-0ubuntu0.16.04.1_all.deb ...
Unpacking mysql-client (5.7.22-0ubuntu0.16.04.1) ...
Selecting previously unselected package python2.7-dev.
Preparing to unpack .../python2.7-dev_2.7.12-1ubuntu0~16.04.3_amd64.deb ...
Unpacking python2.7-dev (2.7.12-1ubuntu0~16.04.3) ...
Selecting previously unselected package python-dev.
Preparing to unpack .../python-dev_2.7.12-1~16.04_amd64.deb ...
Unpacking python-dev (2.7.12-1~16.04) ...
Selecting previously unselected package python-pip-whl.
Preparing to unpack .../python-pip-whl_8.1.1-2ubuntu0.4_all.deb ...
Unpacking python-pip-whl (8.1.1-2ubuntu0.4) ...
Selecting previously unselected package python-pip.
Preparing to unpack .../python-pip_8.1.1-2ubuntu0.4_all.deb ...
Unpacking python-pip (8.1.1-2ubuntu0.4) ...
Selecting previously unselected package python-pkg-resources.
Preparing to unpack .../python-pkg-resources_20.7.0-1_all.deb ...
Unpacking python-pkg-resources (20.7.0-1) ...
Selecting previously unselected package python-setuptools.
Preparing to unpack .../python-setuptools_20.7.0-1_all.deb ...
Unpacking python-setuptools (20.7.0-1) ...
Selecting previously unselected package python-xapian.
Preparing to unpack .../python-xapian_1.2.22-2build1_amd64.deb ...
Unpacking python-xapian (1.2.22-2build1) ...
Selecting previously unselected package swig3.0.
Preparing to unpack .../swig3.0_3.0.8-0ubuntu3_amd64.deb ...
Unpacking swig3.0 (3.0.8-0ubuntu3) ...
Selecting previously unselected package swig.
Preparing to unpack .../swig_3.0.8-0ubuntu3_amd64.deb ...
Unpacking swig (3.0.8-0ubuntu3) ...
Selecting previously unselected package unzip.
Preparing to unpack .../unzip_6.0-20ubuntu1_amd64.deb ...
Unpacking unzip (6.0-20ubuntu1) ...
Selecting previously unselected package xapian-tools.
Preparing to unpack .../xapian-tools_1.2.22-2_amd64.deb ...
Unpacking xapian-tools (1.2.22-2) ...
Selecting previously unselected package xmlstarlet.
Preparing to unpack .../xmlstarlet_1.6.1-1ubuntu1_amd64.deb ...
Unpacking xmlstarlet (1.6.1-1ubuntu1) ...
Selecting previously unselected package xsltproc.
Preparing to unpack .../xsltproc_1.1.28-2.1ubuntu0.1_amd64.deb ...
Unpacking xsltproc (1.1.28-2.1ubuntu0.1) ...
Selecting previously unselected package zip.
Preparing to unpack .../archives/zip_3.0-11_amd64.deb ...
Unpacking zip (3.0-11) ...
Selecting previously unselected package python-meld3.
Preparing to unpack .../python-meld3_1.0.2-2_all.deb ...
Unpacking python-meld3 (1.0.2-2) ...
Selecting previously unselected package supervisor.
Preparing to unpack .../supervisor_3.2.0-2ubuntu0.2_all.deb ...
Unpacking supervisor (3.2.0-2ubuntu0.2) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Processing triggers for systemd (229-4ubuntu21.2) ...
Setting up cron (3.0pl1-128ubuntu2) ...
Adding group `crontab' (GID 106) ...
Done.
update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
update-rc.d: warning: stop runlevel arguments (1) do not match cron Default-Stop values (none)
invoke-rc.d: policy-rc.d denied execution of start.
Setting up libgdbm3:amd64 (1.8.3-13.1) ...
Setting up perl-modules-5.22 (5.22.1-9ubuntu0.5) ...
Setting up libperl5.22:amd64 (5.22.1-9ubuntu0.5) ...
Setting up perl (5.22.1-9ubuntu0.5) ...
update-alternatives: using /usr/bin/prename to provide /usr/bin/rename (rename) in auto mode
Setting up mime-support (3.59ubuntu1) ...
Setting up libexpat1:amd64 (2.1.0-7ubuntu0.16.04.3) ...
Setting up libssl1.0.0:amd64 (1.0.2g-1ubuntu4.13) ...
Setting up libpython2.7-stdlib:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Setting up python2.7 (2.7.12-1ubuntu0~16.04.3) ...
Setting up libpython-stdlib:amd64 (2.7.12-1~16.04) ...
Setting up python (2.7.12-1~16.04) ...
Setting up libmpfr4:amd64 (3.1.4-1) ...
Setting up libmpc3:amd64 (1.0.3-1) ...
Setting up bzip2 (1.0.6-8) ...
Setting up libbsd0:amd64 (0.8.2-1) ...
Setting up libedit2:amd64 (3.1-20150325-1ubuntu2) ...
Setting up libicu55:amd64 (55.1-7ubuntu0.4) ...
Setting up libnuma1:amd64 (2.0.11-1ubuntu1.1) ...
Setting up libxml2:amd64 (2.9.3+dfsg1-1ubuntu0.5) ...
Setting up openssh-client (1:7.2p2-4ubuntu2.4) ...
Setting up binutils (2.26.1-1ubuntu1~16.04.6) ...
Setting up libc-dev-bin (2.23-0ubuntu10) ...
Setting up linux-libc-dev:amd64 (4.4.0-130.156) ...
Setting up libc6-dev:amd64 (2.23-0ubuntu10) ...
Setting up libisl15:amd64 (0.16.1-1) ...
Setting up cpp-5 (5.4.0-6ubuntu1~16.04.10) ...
Setting up cpp (4:5.3.1-1ubuntu1) ...
Setting up libcc1-0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libgomp1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libitm1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libatomic1:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libasan2:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up liblsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libtsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libubsan0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libcilkrts5:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libmpx0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libquadmath0:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up libgcc-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up gcc-5 (5.4.0-6ubuntu1~16.04.10) ...
Setting up gcc (4:5.3.1-1ubuntu1) ...
Setting up libstdc++-5-dev:amd64 (5.4.0-6ubuntu1~16.04.10) ...
Setting up g++-5 (5.4.0-6ubuntu1~16.04.10) ...
Setting up g++ (4:5.3.1-1ubuntu1) ...
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode
Setting up make (4.1-6) ...
Setting up libdpkg-perl (1.18.4ubuntu1.4) ...
Setting up xz-utils (5.1.1alpha+20120614-2ubuntu2) ...
update-alternatives: using /usr/bin/xz to provide /usr/bin/lzma (lzma) in auto mode
Setting up patch (2.7.5-1ubuntu0.16.04.1) ...
Setting up dpkg-dev (1.18.4ubuntu1.4) ...
Setting up build-essential (12.1ubuntu2) ...
Setting up liberror-perl (0.17-1.2) ...
Setting up git-man (1:2.7.4-0ubuntu1.4) ...
Setting up git (1:2.7.4-0ubuntu1.4) ...
Setting up icu-devtools (55.1-7ubuntu0.4) ...
Setting up libaio1:amd64 (0.3.110-2) ...
Setting up libexpat1-dev:amd64 (2.1.0-7ubuntu0.16.04.3) ...
Setting up libicu-dev:amd64 (55.1-7ubuntu0.4) ...
Setting up mysql-common (5.7.22-0ubuntu0.16.04.1) ...
update-alternatives: using /etc/mysql/my.cnf.fallback to provide /etc/mysql/my.cnf (my.cnf) in auto mode
Setting up libmysqlclient20:amd64 (5.7.22-0ubuntu0.16.04.1) ...
Setting up zlib1g-dev:amd64 (1:1.2.8.dfsg-2ubuntu4.1) ...
Setting up libmysqlclient-dev (5.7.22-0ubuntu0.16.04.1) ...
Setting up libpython2.7:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Setting up libpython2.7-dev:amd64 (2.7.12-1ubuntu0~16.04.3) ...
Setting up libpython-dev:amd64 (2.7.12-1~16.04) ...
Setting up libssl-dev:amd64 (1.0.2g-1ubuntu4.13) ...
Setting up libxapian22v5:amd64 (1.2.22-2) ...
Setting up libxml2-dev:amd64 (2.9.3+dfsg1-1ubuntu0.5) ...
Setting up libxslt1.1:amd64 (1.1.28-2.1ubuntu0.1) ...
Setting up libxslt1-dev:amd64 (1.1.28-2.1ubuntu0.1) ...
Setting up mysql-client-core-5.7 (5.7.22-0ubuntu0.16.04.1) ...
Setting up mysql-client-5.7 (5.7.22-0ubuntu0.16.04.1) ...
Setting up mysql-client (5.7.22-0ubuntu0.16.04.1) ...
Setting up python2.7-dev (2.7.12-1ubuntu0~16.04.3) ...
Setting up python-dev (2.7.12-1~16.04) ...
Setting up python-pip-whl (8.1.1-2ubuntu0.4) ...
Setting up python-pip (8.1.1-2ubuntu0.4) ...
Setting up python-pkg-resources (20.7.0-1) ...
Setting up python-setuptools (20.7.0-1) ...
Setting up python-xapian (1.2.22-2build1) ...
Setting up swig3.0 (3.0.8-0ubuntu3) ...
Setting up swig (3.0.8-0ubuntu3) ...
Setting up unzip (6.0-20ubuntu1) ...
Setting up xapian-tools (1.2.22-2) ...
Setting up xmlstarlet (1.6.1-1ubuntu1) ...
Setting up xsltproc (1.1.28-2.1ubuntu0.1) ...
Setting up zip (3.0-11) ...
Setting up python-meld3 (1.0.2-2) ...
Setting up supervisor (3.2.0-2ubuntu0.2) ...
invoke-rc.d: policy-rc.d denied execution of start.
Processing triggers for systemd (229-4ubuntu21.2) ...
Processing triggers for libc-bin (2.23-0ubuntu10) ...
Removing intermediate container b104a071aa6d
 ---> ad1db4495d69
Step 6/24 : RUN pip install -q virtualenv     MySQL-python     flup     python-memcached     python-Levenshtein     m2crypto     wheel
 ---> Running in d4d40d18542f
Removing intermediate container d4d40d18542f
 ---> 160812d992ab
Step 7/24 : RUN pip install -I pootle==$POOTLE_VERSION
 ---> Running in 4feaf2e3e8f3
Collecting pootle==2.7.6
  Downloading https://files.pythonhosted.org/packages/5f/27/5111a9fd5128bc6b8d88b9caba6a1268be662adf315a54c455bb4473ba61/Pootle-2.7.6.tar.bz2 (7.0MB)
Collecting Django<1.8,>=1.7.11 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/cd/1a/9797706779fc77317887bcf4b12632c24aed8404b694ed1b8d1f7053c92b/Django-1.7.11-py2.py3-none-any.whl (7.4MB)
Collecting django-allauth<=0.25.2,>=0.24.1 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/94/81/e6314914b87409a224bcdfef55a8978b2bc19417db7e783499873a6e3634/django-allauth-0.25.2.tar.gz (408kB)
Collecting django-assets==0.11 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/82/7b/d3017d95974529ff7f5a9d2efd5c126ff2474517d6e1f1d0cda0c493085f/django-assets-0.11.tar.gz
Collecting django-contact-form==1.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/96/48/028ffb0301469ad8aa75794def23454456fe00857653f5263eb66ed9e507/django-contact-form-1.0.tar.gz
Collecting django-overextends<=0.4.1,>=0.3.2 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/62/39/f5267102d3846f21a9d8cd3b609baed66ca677881ed3d0e96504e61b356f/django_overextends-0.4.1-py2.py3-none-any.whl
Collecting django-redis<=4.4.3 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/3b/95/9ba8822a59390298153c810355837bc291572f6ae564e689c5fbc06b98d1/django-redis-4.4.3.tar.gz (53kB)
Collecting django-rq<=0.9.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/e7/a8/431af8bf438bf4967f8dd98bbe08ddd500543f275a86f0dfd028b158bcb4/django_rq-0.9.0-py2-none-any.whl
Collecting django-transaction-hooks<=0.2 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/60/f0/04ea2d937a44d94043a0ce8d4dec3328b36faa5d4b3c893478165c0aa259/django-transaction-hooks-0.2.tar.gz
Collecting cssmin<=0.2.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/8e/d8/dc9da69bb186303f7ab41adef0a5b6d34da2fdba006827620877760241c3/cssmin-0.2.0.tar.gz
Collecting diff-match-patch==20121119 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/22/82/46eaeab04805b4fac17630b59f30c4f2c8860988bcefd730ff4f1992908b/diff-match-patch-20121119.tar.gz (54kB)
Collecting elasticsearch<1.7,>=1.0.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/b4/5e/6e163a168b1405e307642cd81d82863bbd7ba59fcc951443865e20254baa/elasticsearch-1.6.0-py2.py3-none-any.whl (58kB)
Collecting lxml<=3.6.0,>=2.2.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/11/1b/fe6904151b37a0d6da6e60c13583945f8ce3eae8ebd0ec763ce546358947/lxml-3.6.0.tar.gz (3.7MB)
Collecting rq<=0.5.6,>=0.5.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/ee/e5/0f862d0262adab9501656601ea11cf35c109aa0ea84a31a07498f12505ec/rq-0.5.6-py2.py3-none-any.whl (47kB)
Collecting translate-toolkit<2.0,>=1.13.0 (from pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/f5/dc/bc687b5af95bcbff2c32ca0d4d81016434475c9de73b409e9e0774458c25/translate-toolkit-1.13.0.tar.bz2 (4.6MB)
Collecting python-openid>=2.2.5 (from django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/7b/8a/e94d18c666073280b8c0614b7e38cfaf0b129989e42f4ca713942b862f0a/python-openid-2.2.5.tar.gz (301kB)
Collecting requests-oauthlib>=0.3.0 (from django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/94/e7/c250d122992e1561690d9c0f7856dadb79d61fd4bdd0e598087dce607f6c/requests_oauthlib-1.0.0-py2.py3-none-any.whl
Collecting requests>=1.0.3 (from django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/65/47/7e02164a2a3db50ed6d8a6ab1d6d60b69c4c3fdf57a284257925dfc12bda/requests-2.19.1-py2.py3-none-any.whl (91kB)
Collecting webassets==0.11 (from django-assets==0.11->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/25/a2/4012503ae0e589b6796fe586d9d621eea6b5ee14a1de8756f85af36c4ba4/webassets-0.11.tar.gz (170kB)
Collecting sphinx-me>=0.1.2 (from django-overextends<=0.4.1,>=0.3.2->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/d0/54/19bc2492a652450bad1faa1de5f4d722bd6965ab2ad5f2c5f3ef9304a930/sphinx_me-0.3-py2.py3-none-any.whl
Collecting redis>=2.10.0 (from django-redis<=4.4.3->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/3b/f6/7a76333cf0b9251ecf49efff635015171843d9b977e4ffcf59f9c4428052/redis-2.10.6-py2.py3-none-any.whl (64kB)
Collecting urllib3<2.0,>=1.8 (from elasticsearch<1.7,>=1.0.0->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/bd/c9/6fdd990019071a4a32a5e7cb78a1d92c53851ef4f56f62a3486e6a7d8ffb/urllib3-1.23-py2.py3-none-any.whl (133kB)
Collecting click>=3.0 (from rq<=0.5.6,>=0.5.0->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/34/c1/8806f99713ddb993c5366c362b2f908f18269f8d792aff1abfd700775a77/click-6.7-py2.py3-none-any.whl (71kB)
Collecting argparse (from translate-toolkit<2.0,>=1.13.0->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/f2/94/3af39d34be01a24a6e65433d19e107099374224905f1e0cc6bbe1fd22a2f/argparse-1.4.0-py2.py3-none-any.whl
Collecting six (from translate-toolkit<2.0,>=1.13.0->pootle==2.7.6)
  Using cached https://files.pythonhosted.org/packages/67/4b/141a581104b1f6397bfa78ac9d43d8ad29a7ca43ea90a2d863fe3056e86a/six-1.11.0-py2.py3-none-any.whl
Collecting oauthlib>=0.6.2 (from requests-oauthlib>=0.3.0->django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/e6/d1/ddd9cfea3e736399b97ded5c2dd62d1322adef4a72d816f1ed1049d6a179/oauthlib-2.1.0-py2.py3-none-any.whl (121kB)
Collecting certifi>=2017.4.17 (from requests>=1.0.3->django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/7c/e6/92ad559b7192d846975fc916b65f667c7b8c3a32bea7372340bfe9a15fa5/certifi-2018.4.16-py2.py3-none-any.whl (150kB)
Collecting chardet<3.1.0,>=3.0.2 (from requests>=1.0.3->django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl (133kB)
Collecting idna<2.8,>=2.5 (from requests>=1.0.3->django-allauth<=0.25.2,>=0.24.1->pootle==2.7.6)
  Downloading https://files.pythonhosted.org/packages/4b/2a/0276479a4b3caeb8a8c1af2f8e4355746a97fab05a372e4a2c6a6b876165/idna-2.7-py2.py3-none-any.whl (58kB)
Building wheels for collected packages: pootle, django-allauth, django-assets, django-contact-form, django-redis, django-transaction-hooks, cssmin, diff-match-patch, lxml, translate-toolkit, python-openid, webassets
  Running setup.py bdist_wheel for pootle: started
  Running setup.py bdist_wheel for pootle: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/b1/58/5a/28be14b6d505e8f85cea461ae9ee67d58ee183c16b58f3b8d1
  Running setup.py bdist_wheel for django-allauth: started
  Running setup.py bdist_wheel for django-allauth: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/a1/0d/7b/13b3ba655ad9845aab4a892351b4e6cacc754d7c77a11a1c77
  Running setup.py bdist_wheel for django-assets: started
  Running setup.py bdist_wheel for django-assets: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/5e/29/32/37756a9398441be99f7bd2c07d4f0c4d26bc87bf18ca3d73d9
  Running setup.py bdist_wheel for django-contact-form: started
  Running setup.py bdist_wheel for django-contact-form: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/de/8c/09/f481d92e4bfcd2bac0d070849ac0aa22c0b4eaecfddac01b67
  Running setup.py bdist_wheel for django-redis: started
  Running setup.py bdist_wheel for django-redis: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/ad/8c/23/28fb90dce84dfc6a5c82eab4157cf262759460c2d2944e5c17
  Running setup.py bdist_wheel for django-transaction-hooks: started
  Running setup.py bdist_wheel for django-transaction-hooks: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/7a/d5/89/66938a6c7da0daa2114cb14e3ba9e14dbd74de2210865a1c8a
  Running setup.py bdist_wheel for cssmin: started
  Running setup.py bdist_wheel for cssmin: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/56/05/1e/ed779e049cd9909638d3973adb86f928ba1f6025118bd1a13e
  Running setup.py bdist_wheel for diff-match-patch: started
  Running setup.py bdist_wheel for diff-match-patch: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/f2/72/a3/8c2adafbe9afc22a1e65cfc412982e0061199c0092b1be11d9
  Running setup.py bdist_wheel for lxml: started
  Running setup.py bdist_wheel for lxml: still running...
  Running setup.py bdist_wheel for lxml: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/b4/b8/82/0142b243079e93a9449499c4eca5e218d83b8927409b4351cb
  Running setup.py bdist_wheel for translate-toolkit: started
  Running setup.py bdist_wheel for translate-toolkit: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/96/e2/16/ca9824d2bdb89822b43487cc7b643160bdf86b063235b51d4e
  Running setup.py bdist_wheel for python-openid: started
  Running setup.py bdist_wheel for python-openid: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/89/2a/a5/9efdd8de9a8f3d5bb0c13378f36fcaba544ae2a056c0d9dc37
  Running setup.py bdist_wheel for webassets: started
  Running setup.py bdist_wheel for webassets: finished with status 'done'
  Stored in directory: /root/.cache/pip/wheels/55/65/b9/67138b344b4ca8e7b81025ce1428121eea4eddf43f3e508ede
Successfully built pootle django-allauth django-assets django-contact-form django-redis django-transaction-hooks cssmin diff-match-patch lxml translate-toolkit python-openid webassets
Installing collected packages: Django, python-openid, oauthlib, certifi, chardet, urllib3, idna, requests, requests-oauthlib, django-allauth, webassets, django-assets, django-contact-form, sphinx-me, django-overextends, redis, django-redis, click, rq, django-rq, django-transaction-hooks, cssmin, diff-match-patch, elasticsearch, lxml, argparse, six, translate-toolkit, pootle
Successfully installed Django-1.7.11 argparse-1.2.1 certifi-2018.4.16 chardet-3.0.4 click-6.7 cssmin-0.2.0 diff-match-patch-20121119 django-allauth-0.25.2 django-assets-0.11 django-contact-form-1.0 django-overextends-0.4.1 django-redis-4.4.3 django-rq-0.9.0 django-transaction-hooks-0.2 elasticsearch-1.6.0 idna-2.7 lxml-3.6.0 oauthlib-2.1.0 pootle-2.7.6 python-openid-2.2.5 redis-2.10.6 requests-2.19.1 requests-oauthlib-1.0.0 rq-0.5.6 six-1.11.0 sphinx-me-0.3 translate-toolkit-1.13.0 urllib3-1.23 webassets-0.11
You are using pip version 8.1.1, however version 10.0.1 is available.
You should consider upgrading via the 'pip install --upgrade pip' command.
Removing intermediate container 4feaf2e3e8f3
 ---> 3da9bd45908e
Step 8/24 : COPY pootle.conf /root/.pootle/pootle.conf
 ---> bc204005cae2
Step 9/24 : RUN mkdir -p /srv/pootle/po/.tmp
 ---> Running in b3bf9f33ccb4
Removing intermediate container b3bf9f33ccb4
 ---> 73d77a00a72c
Step 10/24 : RUN ln -s /usr/lib/python2.7/dist-packages/xapian /usr/local/lib/python2.7/dist-packages/xapian
 ---> Running in f3c165984493
Removing intermediate container f3c165984493
 ---> 9f0a33208605
Step 11/24 : COPY pootle.sh /etc/profile.d/pootle.sh
 ---> c07198eedac0
Step 12/24 : RUN /etc/profile.d/pootle.sh
 ---> Running in 60ad4edea348
Removing intermediate container 60ad4edea348
 ---> e925aee74210
Step 13/24 : COPY scripts /home/pootle/scripts
 ---> db9ad60ee785
Step 14/24 : COPY templates /home/pootle/templates
 ---> 6e553cf10e13
Step 15/24 : COPY frontend /usr/local/lib/python2.7/dist-packages/pootle/static
 ---> 048d7efc24dc
Step 16/24 : COPY typo3.cron /etc/cron.d/typo3
 ---> 8d3b4b5f87be
Step 17/24 : RUN cp -R /usr/lib/python2.7/dist-packages/xapian /usr/local/lib/python2.7/dist-packages/pootle/assets
 ---> Running in 21b1fdd46163
Removing intermediate container 21b1fdd46163
 ---> ed9b618582b5
Step 18/24 : RUN pootle collectstatic --noinput --clear
 ---> Running in 29f0ddd50fe6
2018-07-07 15:41:45,005 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:41:45,290 INFO Using Python PO
Deleting 'favicon.ico'
Deleting 'xapian/_xapian.so'
Deleting 'xapian/__init__.pyc'
Deleting 'xapian/__init__.py'
Deleting 'css/auth.css'
Deleting 'css/error.css'
Deleting 'css/user.css'
Deleting 'css/navbar.css'
Deleting 'css/style.css'
Deleting 'css/actions.css'
Deleting 'css/sprite.css'
Deleting 'css/editor.css'
Deleting 'css/select2.css'
Deleting 'css/select2-pootle.css'
Deleting 'css/odometer.css'
Deleting 'css/tipsy.css'
Deleting 'css/reports.css'
Deleting 'css/admin.css'
Deleting 'css/editor.min.7042d9ed.css'
Deleting 'css/buttons.css'
Deleting 'css/react-select.css'
Deleting 'css/breadcrumbs.css'
Deleting 'css/reports.min.css'
Deleting 'css/admin.min.523f986b.css'
Deleting 'css/magnific-popup.css'
Deleting 'css/scores.css'
Deleting 'css/contact.css'
Deleting 'css/popup.css'
Deleting 'css/welcome.css'
Deleting 'css/common.min.262ab62f.css'
Deleting 'images/select2x2.png'
Deleting 'images/bg.png'
Deleting 'images/select2-spinner.gif'
Deleting 'images/menu_white.png'
Deleting 'images/blank.gif'
Deleting 'images/sprite.png'
Deleting 'images/app-32x32.png'
Deleting 'images/select2.png'
Deleting 'images/squiggle.png'
Deleting 'images/app-64x64.png'
Deleting 'images/sprite/icon-ascdesc.gif'
Deleting 'images/sprite/icon-search.png'
Deleting 'images/sprite/icon-web-translate.png'
Deleting 'images/sprite/icon-reject.png'
Deleting 'images/sprite/icon-arrow-down.png'
Deleting 'images/sprite/icon-raw-mode.png'
Deleting 'images/sprite/icon-arrow-up.png'
Deleting 'images/sprite/icon-error.png'
Deleting 'images/sprite/icon-folder-parent.png'
Deleting 'images/sprite/icon-tick.png'
Deleting 'images/sprite/icon-expand-stats.png'
Deleting 'images/sprite/icon-external-link.png'
Deleting 'images/sprite/icon-user-linkedin.png'
Deleting 'images/sprite/icon-google-translate.png'
Deleting 'images/sprite/icon-block-muted.png'
Deleting 'images/sprite/icon-user-website.png'
Deleting 'images/sprite/icon-logo.png'
Deleting 'images/sprite/icon-user-twitter.png'
Deleting 'images/sprite/icon-information.png'
Deleting 'images/sprite/icon-project.png'
Deleting 'images/sprite/icon-comment-user.png'
Deleting 'images/sprite/icon-collapse-stats.png'
Deleting 'images/sprite/icon-asc.gif'
Deleting 'images/sprite/icon-language.png'
Deleting 'images/sprite/icon-file.png'
Deleting 'images/sprite/icon-accept.png'
Deleting 'images/sprite/icon-warning.png'
Deleting 'images/sprite/icon-upload.png'
Deleting 'images/sprite/icon-folder.png'
Deleting 'images/sprite/icon-vfolder.png'
Deleting 'images/sprite/icon-comment-add.png'
Deleting 'images/sprite/icon-block.png'
Deleting 'images/sprite/icon-yandex-translate.png'
Deleting 'images/sprite/icon-back.png'
Deleting 'images/sprite/icon-desc.gif'
Deleting 'images/sprite/icon-timeline.png'
Deleting 'images/sprite/icon-download.png'
Deleting 'images/sprite/icon-copy.png'
Deleting '.webassets-cache/a84f0decc828631703a3d1c04ec74c2f'
Deleting '.webassets-cache/a45e6dee446b93e6e0a05bd3dceaa340'
Deleting '.webassets-cache/02d51bd8ec29758901750dc92c8c6d4c'
Deleting '.webassets-cache/8d93d66bbec01d7ca914d19c2b0b11d4'
Deleting '.webassets-cache/2a7dd702a163bbd0f50cdcc18808a514'
Deleting '.webassets-cache/b49227b26e2217d63f7ce12906311001'
Deleting '.webassets-cache/33e4edfd1db28c794f8a4cbcbcde9d44'
Deleting '.webassets-cache/c2e4b201fb73931cb5aa94f358ad0479'
Deleting '.webassets-cache/21fef948ce353107d39f1e60cde00137'
Deleting '.webassets-cache/6b06feffb89ec66204b05d867d4f0769'
Deleting '.webassets-cache/04a3150bbf859ef2e65db37d47bfd324'
Deleting '.webassets-cache/438d4267d8a8b4a1dd2b5c96c29c21c1'
Deleting '.webassets-cache/ed258916d0558e9d143c6df28c0f9f75'
Deleting '.webassets-cache/b0eb26a51d24db29f80a847ac010026b'
Deleting '.webassets-cache/02d2f7e3fd4f31f7a73a881daefacd04'
Deleting '.webassets-cache/35324cb1cc01359918032edfae00d983'
Deleting '.webassets-cache/8c6154062679f58451a4b24098623f5c'
Deleting '.webassets-cache/358add04a9f0ec8c4e7b18d70a06bd9f'
Deleting '.webassets-cache/e449ab3367c29b28686abd178402b441'
Deleting '.webassets-cache/effc6787a6585136dd1c93f403a9c6c0'
Deleting '.webassets-cache/6d5e8ce7956a2c7117e115d238685d1e'
Deleting '.webassets-cache/529b9c04c18cd0d61fa6fa64c812890a'
Deleting '.webassets-cache/c08e1c88fe4afc78c63cb1029dacffd3'
Deleting '.webassets-cache/36a4c3bf2ceea586413ee00b5c80bd4c'
Deleting '.webassets-cache/de9f13fa967b591e6ac90d469acdaafe'
Deleting '.webassets-cache/3a1dbf4d44865e534d35f05ff1006fa9'
Deleting '.webassets-cache/87ac7aa717c4fb9941599ddfde9cf5cf'
Deleting 'js/score.js'
Deleting 'js/msg.js'
Deleting 'js/collections.js'
Deleting 'js/vendor.bundle.js'
Deleting 'js/contact.js'
Deleting 'js/utils.js'
Deleting 'js/search.js'
Deleting 'js/vendor.min.62a362b8.js'
Deleting 'js/webpack.config.js'
Deleting 'js/README'
Deleting 'js/reports.min.js'
Deleting 'js/helpers.js'
Deleting 'js/agreement.js'
Deleting 'js/package.json'
Deleting 'js/common.js'
Deleting 'js/captcha.js'
Deleting 'js/store.js'
Deleting 'js/dropdown.js'
Deleting 'js/reducers.js'
Deleting 'js/browser.js'
Deleting 'js/models.js'
Deleting 'js/stats.js'
Deleting 'js/shared/mixins/admin_api.js'
Deleting 'js/shared/mixins/layers.js'
Deleting 'js/shared/mixins/backbone.js'
Deleting 'js/shared/components/LastUpdate.js'
Deleting 'js/shared/components/UserEvent.js'
Deleting 'js/shared/components/lightbox.css'
Deleting 'js/shared/components/CodeMirror.js'
Deleting 'js/shared/components/TimeSince.js'
Deleting 'js/shared/components/CodeMirror.css'
Deleting 'js/shared/components/Avatar.js'
Deleting 'js/shared/models/user.js'
Deleting 'js/shared/models/language.js'
Deleting 'js/shared/models/project.js'
Deleting 'js/shared/utils/linkHashtags.js'
Deleting 'js/shared/utils/diff.js'
Deleting 'js/shared/utils/markup.js'
Deleting 'js/shared/utils/fetch.js'
Deleting 'js/shared/utils/dimensions.js'
Deleting 'js/shared/utils/cookie.js'
Deleting 'js/shared/api/StatsAPI.js'
Deleting 'js/shared/api/UnitAPI.js'
Deleting 'js/reports/app.bundle.js'
Deleting 'js/reports/app.js'
Deleting 'js/admin/app.bundle.js'
Deleting 'js/admin/app.min.d721baa4.js'
Deleting 'js/admin/AdminRouter.js'
Deleting 'js/admin/app.js'
Deleting 'js/admin/components/ItemTable.js'
Deleting 'js/admin/components/ItemDelete.js'
Deleting 'js/admin/components/AdminController.js'
Deleting 'js/admin/components/Search.js'
Deleting 'js/admin/components/User/UserController.js'
Deleting 'js/admin/components/User/UserAdd.js'
Deleting 'js/admin/components/User/index.js'
Deleting 'js/admin/components/User/UserEdit.js'
Deleting 'js/admin/components/User/UserForm.js'
Deleting 'js/admin/components/Language/LanguageForm.js'
Deleting 'js/admin/components/Language/LanguageAdd.js'
Deleting 'js/admin/components/Language/index.js'
Deleting 'js/admin/components/Language/LanguageController.js'
Deleting 'js/admin/components/Language/LanguageEdit.js'
Deleting 'js/admin/components/Project/ProjectForm.js'
Deleting 'js/admin/components/Project/ProjectEdit.js'
Deleting 'js/admin/components/Project/ProjectAdd.js'
Deleting 'js/admin/components/Project/ProjectController.js'
Deleting 'js/admin/components/Project/index.js'
Deleting 'js/admin/general/app.bundle.js'
Deleting 'js/admin/general/permissions.js'
Deleting 'js/admin/general/dashboard.js'
Deleting 'js/admin/general/app.js'
Deleting 'js/admin/general/staticpages.js'
Deleting 'js/admin/general/app.min.331b92fe.js'
Deleting 'js/admin/general/components/LiveEditor.css'
Deleting 'js/admin/general/components/ContentEditor.js'
Deleting 'js/admin/general/components/ContentPreview.js'
Deleting 'js/admin/general/components/LiveEditor.js'
Deleting 'js/editor/app.bundle.js'
Deleting 'js/editor/utils.js'
Deleting 'js/editor/app.min.7d63089f.js'
Deleting 'js/editor/app.js'
Deleting 'js/editor/mt/PlaceholderCleaner.js'
Deleting 'js/editor/mt/MTProvider.js'
Deleting 'js/editor/mt/providers/GoogleTranslate.js'
Deleting 'js/editor/mt/providers/YandexTranslate.js'
Deleting 'js/auth/actions.js'
Deleting 'js/auth/index.js'
Deleting 'js/auth/reducers.js'
Deleting 'js/auth/components/AuthWindow.js'
Deleting 'js/auth/components/EmailConfirmation.js'
Deleting 'js/auth/components/AccountActivation.js'
Deleting 'js/auth/components/SignInPanel.js'
Deleting 'js/auth/components/RequestPasswordResetForm.js'
Deleting 'js/auth/components/AuthProgress.js'
Deleting 'js/auth/components/SignUpForm.js'
Deleting 'js/auth/components/RequestPasswordResetSent.js'
Deleting 'js/auth/components/SocialSignInForm.js'
Deleting 'js/auth/components/SocialVerification.js'
Deleting 'js/auth/components/RequestPasswordResetProgress.js'
Deleting 'js/auth/components/AuthContent.js'
Deleting 'js/auth/components/SocialAuthError.js'
Deleting 'js/auth/components/SignInForm.js'
Deleting 'js/auth/components/PasswordResetForm.js'
Deleting 'js/auth/components/AccountInactive.js'
Deleting 'js/auth/utils/AuthAPI.js'
Deleting 'js/auth/containers/Auth.js'
Deleting 'js/3../3/app.bundle.js'
Deleting 'js/vendor/moment.js'
Deleting 'js/vendor/sorttable.js'
Deleting 'js/vendor/spin.js'
Deleting 'js/vendor/levenshtein.js'
Deleting 'js/vendor/odometer.js'
Deleting 'js/vendor/underscore.js'
Deleting 'js/vendor/shortcut.js'
Deleting 'js/vendor/jquery/jquery.utils.js'
Deleting 'js/vendor/jquery/jquery.serializeObject.js'
Deleting 'js/vendor/jquery/jquery.highlightRegex.js'
Deleting 'js/vendor/jquery/jquery.magnific-popup.js'
Deleting 'js/vendor/jquery/jquery.history.js'
Deleting 'js/vendor/jquery/jquery.js'
Deleting 'js/vendor/jquery/jquery.caret.js'
Deleting 'js/vendor/jquery/jquery.select2.js'
Deleting 'js/vendor/jquery/jquery.flot.stack.js'
Deleting 'js/vendor/jquery/jquery.flot.js'
Deleting 'js/vendor/jquery/jquery.flot.marks.js'
Deleting 'js/vendor/jquery/jquery.bidi.js'
Deleting 'js/vendor/jquery/jquery.easing.js'
Deleting 'js/vendor/jquery/jquery.jsonp.js'
Deleting 'js/vendor/jquery/jquery.tipsy.js'
Deleting 'js/vendor/jquery/jquery.flot.time.js'
Deleting 'js/vendor/backbone/backbone.queryparams-1.1-shim.js'
Deleting 'js/vendor/backbone/backbone.safesync.js'
Deleting 'js/vendor/backbone/backbone.move.js'
Deleting 'js/vendor/backbone/backbone.queryparams.js'
Deleting 'js/vendor/backbone/backbone-relational.js'
Deleting 'js/vendor/backbone/backbone.js'
Deleting 'js/4../4/app.bundle.js'
Deleting 'js/common/app.bundle.js'
Deleting 'js/common/app.min.deaf8619.js'
Deleting 'js/user/app.bundle.js'
Deleting 'js/user/app.min.965a47c5.js'
Deleting 'js/user/app.js'
Deleting 'js/user/routers.js'
Deleting 'js/user/components/UserProfileEdit.js'
Deleting 'js/2../2/app.bundle.js'
Deleting 'js/5../5/app.bundle.js'
Deleting 'js/1../1/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/favicon.ico'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/auth.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/error.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/user.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/navbar.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/style.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/actions.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/sprite.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/editor.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/select2.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/select2-pootle.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/odometer.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/tipsy.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/reports.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/admin.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/buttons.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/react-select.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/breadcrumbs.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/magnific-popup.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/scores.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/contact.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/popup.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/css/welcome.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/select2x2.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/bg.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/select2-spinner.gif'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/menu_white.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/blank.gif'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/app-32x32.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/select2.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/squiggle.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/app-64x64.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-ascdesc.gif'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-search.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-web-translate.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-reject.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-arrow-down.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-raw-mode.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-arrow-up.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-error.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-folder-parent.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-tick.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-expand-stats.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-external-link.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-user-linkedin.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-google-translate.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-block-muted.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-user-website.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-logo.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-user-twitter.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-information.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-project.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-comment-user.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-collapse-stats.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-asc.gif'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-language.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-file.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-accept.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-warning.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-upload.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-folder.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-vfolder.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-comment-add.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-block.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-yandex-translate.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-back.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-desc.gif'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-timeline.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-download.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/images/sprite/icon-copy.png'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/score.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/msg.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/collections.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/contact.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/utils.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/search.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/webpack.config.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/README'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/helpers.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/agreement.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/package.json'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/common.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/captcha.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/store.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/dropdown.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/reducers.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/browser.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/models.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/stats.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/mixins/forms.jsx'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/mixins/admin_api.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/mixins/layers.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/mixins/backbone.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/LastUpdate.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/forms.jsx'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/UserEvent.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/lightbox.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/CodeMirror.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/Tabs.jsx'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/TimeSince.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/CodeMirror.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/lightbox.jsx'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/components/Avatar.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/models/user.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/models/language.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/models/project.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/linkHashtags.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/diff.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/markup.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/fetch.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/dimensions.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/utils/cookie.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/api/StatsAPI.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/shared/api/UnitAPI.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/reports/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/reports/app.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/AdminRouter.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/app.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/ItemTable.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/ItemDelete.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/AdminController.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Search.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/User/UserController.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/User/UserAdd.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/User/index.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/User/UserEdit.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/User/UserForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Language/LanguageForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Language/LanguageAdd.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Language/index.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Language/LanguageController.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Language/LanguageEdit.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Project/ProjectForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Project/ProjectEdit.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Project/ProjectAdd.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Project/ProjectController.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/components/Project/index.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/permissions.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/dashboard.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/app.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/staticpages.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/components/LiveEditor.css'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/components/ContentEditor.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/components/ContentPreview.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/admin/general/components/LiveEditor.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/utils.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/app.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/mt/PlaceholderCleaner.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/mt/MTProvider.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/mt/providers/GoogleTranslate.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/editor/mt/providers/YandexTranslate.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/actions.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/index.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/reducers.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/AuthWindow.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/EmailConfirmation.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/AccountActivation.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SignInPanel.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/RequestPasswordResetForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/AuthProgress.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SignUpForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/RequestPasswordResetSent.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SocialSignInForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SocialVerification.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/RequestPasswordResetProgress.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/AuthContent.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SocialAuthError.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/SignInForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/PasswordResetForm.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/components/AccountInactive.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/utils/AuthAPI.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/auth/containers/Auth.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/3../3/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/moment.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/sorttable.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/spin.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/levenshtein.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/odometer.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/underscore.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/shortcut.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.utils.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.serializeObject.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.highlightRegex.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.magnific-popup.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.history.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.caret.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.select2.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.flot.stack.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.flot.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.flot.marks.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.bidi.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.easing.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.jsonp.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.tipsy.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/jquery/jquery.flot.time.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone.queryparams-1.1-shim.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone.safesync.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone.move.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone.queryparams.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone-relational.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/vendor/backbone/backbone.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/4../4/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/common/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/user/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/user/forms.jsx'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/user/app.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/user/routers.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/user/components/UserProfileEdit.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/2../2/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/5../5/app.bundle.js'
Copying '/usr/local/lib/python2.7/dist-packages/pootle/static/js/1../1/app.bundle.js'

217 static files copied to '/usr/local/lib/python2.7/dist-packages/pootle/assets'.
Removing intermediate container 29f0ddd50fe6
 ---> ffd20ef0397e
Step 19/24 : RUN pootle assets build
 ---> Running in 1acc954d87b8
2018-07-07 15:41:47,857 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:41:48,127 INFO Using Python PO
Building bundle: css/common.min.%(version)s.css
2018-07-07 15:41:48,177 INFO Building bundle: css/common.min.%(version)s.css
Building bundle: js/editor/app.min.%(version)s.js
2018-07-07 15:41:48,369 INFO Building bundle: js/editor/app.min.%(version)s.js
Building bundle: js/reports.min.js
2018-07-07 15:41:48,371 INFO Building bundle: js/reports.min.js
Building bundle: js/admin/general/app.min.%(version)s.js
2018-07-07 15:41:48,381 INFO Building bundle: js/admin/general/app.min.%(version)s.js
Building bundle: css/editor.min.%(version)s.css
2018-07-07 15:41:48,384 INFO Building bundle: css/editor.min.%(version)s.css
Building bundle: js/common/app.min.%(version)s.js
2018-07-07 15:41:48,404 INFO Building bundle: js/common/app.min.%(version)s.js
Building bundle: js/vendor.min.%(version)s.js
2018-07-07 15:41:48,407 INFO Building bundle: js/vendor.min.%(version)s.js
Building bundle: js/admin/app.min.%(version)s.js
2018-07-07 15:41:48,410 INFO Building bundle: js/admin/app.min.%(version)s.js
Building bundle: css/reports.min.css
2018-07-07 15:41:48,411 INFO Building bundle: css/reports.min.css
Building bundle: css/admin.min.%(version)s.css
2018-07-07 15:41:48,423 INFO Building bundle: css/admin.min.%(version)s.css
Building bundle: js/user/app.min.%(version)s.js
2018-07-07 15:41:48,444 INFO Building bundle: js/user/app.min.%(version)s.js
Removing intermediate container 1acc954d87b8
 ---> e32326818481
Step 20/24 : WORKDIR /home/pootle
Removing intermediate container 22dec04e935f
 ---> b10f86f34b73
Step 21/24 : EXPOSE 8080
 ---> Running in 475fc09392b6
Removing intermediate container 475fc09392b6
 ---> aef4d6d922b5
Step 22/24 : VOLUME ["/usr/local/lib/python2.7/dist-packages/pootle"]
 ---> Running in e745e4b935aa
Removing intermediate container e745e4b935aa
 ---> a1d4d07c72aa
Step 23/24 : COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
 ---> 3bc9ec6ae488
Step 24/24 : CMD ["/usr/bin/supervisord"]
 ---> Running in 3c29265924b1
Removing intermediate container 3c29265924b1
 ---> 478bc2f7f22c
Successfully built 478bc2f7f22c
Successfully tagged pootle_pootle:latest
WARNING: Image for service pootle was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Building nginx
Step 1/2 : FROM nginx:1.11-alpine
1.11-alpine: Pulling from library/nginx
709515475419: Pull complete
4b21d71b440a: Pull complete
c92260fe6357: Pull complete
ed383a1b82df: Pull complete
Digest: sha256:5aadb68304a38a8e2719605e4e180413f390cd6647602bee9bdedd59753c3590
Status: Downloaded newer image for nginx:1.11-alpine
 ---> bedece1f06cc
Step 2/2 : COPY nginx.conf /etc/nginx/conf.d/default.conf
 ---> ae859c5e2f97
Successfully built ae859c5e2f97
Successfully tagged pootle_nginx:latest
WARNING: Image for service nginx was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
Creating pootle_redis_1 ... done
Creating pootle_mysql_1 ... done
Creating pootle_pootle_1 ... done
Creating pootle_nginx_1  ... done

# fititnt at bravo in ~/tmp/pootle on git:master o [12:42:12]
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
22e5a168219d        pootle_nginx        "nginx -g 'daemon of…"   35 seconds ago      Up 33 seconds       80/tcp, 443/tcp     pootle_nginx_1
df43292b109f        pootle_pootle       "/usr/bin/supervisord"   38 seconds ago      Up 35 seconds       8080/tcp            pootle_pootle_1
3260e7872e9d        redis               "docker-entrypoint.s…"   40 seconds ago      Up 38 seconds       6379/tcp            pootle_redis_1
9f9fc59d3895        mariadb:10          "docker-entrypoint.s…"   40 seconds ago      Up 38 seconds       3306/tcp            pootle_mysql_1

# fititnt at bravo in ~/tmp/pootle on git:master o [12:42:45]
$ vim
^CErro detectado ao processar /home/fititnt/.vim/bundle/nerdtree/plugin/NERD_tree.vim:
linha  215:
Interrompido
Interrupção: Aperte ENTER ou digite um comando para continuar

# fititnt at bravo in ~/tmp/pootle on git:master o [12:43:40]
$ code .

# fititnt at bravo in ~/tmp/pootle on git:master o [12:43:43]
$ docker-compose up -d
pootle_mysql_1 is up-to-date
pootle_redis_1 is up-to-date
pootle_pootle_1 is up-to-date
Recreating pootle_nginx_1 ... done

# fititnt at bravo in ~/tmp/pootle on git:master x [12:44:06]
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                         NAMES
d7a24e838b09        pootle_nginx        "nginx -g 'daemon of…"   8 seconds ago       Up 6 seconds        0.0.0.0:80->80/tcp, 443/tcp   pootle_nginx_1
df43292b109f        pootle_pootle       "/usr/bin/supervisord"   2 minutes ago       Up 2 minutes        8080/tcp                      pootle_pootle_1
3260e7872e9d        redis               "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes        6379/tcp                      pootle_redis_1
9f9fc59d3895        mariadb:10          "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes        3306/tcp                      pootle_mysql_1

# fititnt at bravo in ~/tmp/pootle on git:master x [12:44:12]
$ docker-compose up   
pootle_mysql_1 is up-to-date
pootle_redis_1 is up-to-date
pootle_pootle_1 is up-to-date
pootle_nginx_1 is up-to-date
Attaching to pootle_mysql_1, pootle_redis_1, pootle_pootle_1, pootle_nginx_1
mysql_1   | Initializing database
mysql_1   | 
mysql_1   | 
mysql_1   | PLEASE REMEMBER TO SET A PASSWORD FOR THE MariaDB root USER !
mysql_1   | To do so, start the server, then issue the following commands:
mysql_1   | 
mysql_1   | '/usr/bin/mysqladmin' -u root password 'new-password'
mysql_1   | '/usr/bin/mysqladmin' -u root -h  password 'new-password'
mysql_1   | 
mysql_1   | Alternatively you can run:
mysql_1   | '/usr/bin/mysql_secure_installation'
mysql_1   | 
mysql_1   | which will also give you the option of removing the test
mysql_1   | databases and anonymous user created by default.  This is
mysql_1   | strongly recommended for production servers.
mysql_1   | 
mysql_1   | See the MariaDB Knowledgebase at http://mariadb.com/kb or the
mysql_1   | MySQL manual for more instructions.
mysql_1   | 
mysql_1   | Please report any problems at http://mariadb.org/jira
mysql_1   | 
mysql_1   | The latest information about MariaDB is available at http://mariadb.org/.
mysql_1   | You can find additional information about the MySQL part at:
mysql_1   | http://dev.mysql.com
mysql_1   | Consider joining MariaDB's strong and vibrant community:
mysql_1   | https://mariadb.org/get-involved/
mysql_1   | 
mysql_1   | Database initialized
mysql_1   | MySQL init process in progress...
mysql_1   | 2018-07-07 15:42:15 0 [Note] mysqld (mysqld 10.3.8-MariaDB-1:10.3.8+maria~jessie) starting as process 105 ...
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Using Linux native AIO
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Uses event mutexes
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Compressed tables use zlib 1.2.8
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Number of pools: 1
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Using SSE2 crc32 instructions
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Initializing buffer pool, total size = 256M, instances = 1, chunk size = 128M
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Completed initialization of buffer pool
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: 128 out of 128 rollback segments are active.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Waiting for purge to start
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: 10.3.8 started; log sequence number 1630824; transaction id 21
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:15 0 [Note] Plugin 'FEEDBACK' is disabled.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'user' entry 'root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'user' entry '@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Buffer pool(s) load completed at 180707 15:42:15
mysql_1   | 2018-07-07 15:42:15 0 [Note] Reading of all Master_info entries succeded
mysql_1   | 2018-07-07 15:42:15 0 [Note] Added new Master_info '' to hash table
mysql_1   | 2018-07-07 15:42:15 0 [Note] mysqld: ready for connections.
mysql_1   | Version: '10.3.8-MariaDB-1:10.3.8+maria~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  mariadb.org binary distribution
mysql_1   | Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
mysql_1   | 2018-07-07 15:42:17 10 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 
redis_1   | 1:C 07 Jul 15:42:07.677 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1   | 1:C 07 Jul 15:42:07.677 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1   | 1:C 07 Jul 15:42:07.677 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
redis_1   | 1:M 07 Jul 15:42:07.678 * Running mode=standalone, port=6379.
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1   | 1:M 07 Jul 15:42:07.678 # Server initialized
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1   | 1:M 07 Jul 15:42:07.678 * Ready to accept connections
mysql_1   | 2018-07-07 15:42:17 0 [Note] mysqld (initiated by: unknown): Normal shutdown
mysql_1   | 2018-07-07 15:42:17 0 [Note] Event Scheduler: Purging the queue. 0 events
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: FTS optimize thread exiting.
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Starting shutdown...
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Buffer pool(s) dump completed at 180707 15:42:17
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Shutdown completed; log sequence number 1630833; transaction id 24
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld: Shutdown complete
mysql_1   | 
mysql_1   | 
mysql_1   | MySQL init process done. Ready for start up.
mysql_1   | 
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld (mysqld 10.3.8-MariaDB-1:10.3.8+maria~jessie) starting as process 1 ...
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Using Linux native AIO
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Uses event mutexes
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Compressed tables use zlib 1.2.8
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Number of pools: 1
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Using SSE2 crc32 instructions
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Initializing buffer pool, total size = 256M, instances = 1, chunk size = 128M
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Completed initialization of buffer pool
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: 128 out of 128 rollback segments are active.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Waiting for purge to start
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: 10.3.8 started; log sequence number 1630833; transaction id 21
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:19 0 [Note] Plugin 'FEEDBACK' is disabled.
mysql_1   | 2018-07-07 15:42:19 0 [Note] Server socket created on IP: '::'.
mysql_1   | 2018-07-07 15:42:19 0 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Buffer pool(s) load completed at 180707 15:42:19
mysql_1   | 2018-07-07 15:42:19 0 [Note] Reading of all Master_info entries succeded
mysql_1   | 2018-07-07 15:42:19 0 [Note] Added new Master_info '' to hash table
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld: ready for connections.
mysql_1   | Version: '10.3.8-MariaDB-1:10.3.8+maria~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  mariadb.org binary distribution
pootle_1  | /usr/lib/python2.7/dist-packages/supervisor/options.py:297: UserWarning: Supervisord is running as root and it is searching for its configuration file in default locations (including its current working directory); you probably want to specify a "-c" argument specifying an absolute path to a configuration file for improved security.
pootle_1  |   'Supervisord is running as root and it is searching '
pootle_1  | 2018-07-07 15:42:10,119 CRIT Supervisor running as root (no user in config file)
pootle_1  | 2018-07-07 15:42:10,119 WARN Included extra file "/etc/supervisor/conf.d/supervisord.conf" during parsing
pootle_1  | 2018-07-07 15:42:10,129 INFO RPC interface 'supervisor' initialized
pootle_1  | 2018-07-07 15:42:10,129 CRIT Server 'unix_http_server' running without any HTTP authentication checking
pootle_1  | 2018-07-07 15:42:10,129 INFO supervisord started with pid 1
pootle_1  | 2018-07-07 15:42:11,132 INFO spawned: 'cron' with pid 9
pootle_1  | 2018-07-07 15:42:11,134 INFO spawned: 'pootle' with pid 10
pootle_1  | 2018-07-07 15:42:11,136 INFO spawned: 'pootleworker' with pid 11
pootle_1  | 2018-07-07 15:42:11,736 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:12,737 INFO success: cron entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:42:12,739 INFO spawned: 'pootle' with pid 14
pootle_1  | 2018-07-07 15:42:12,739 INFO success: pootleworker entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:42:13,203 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:15,207 INFO spawned: 'pootle' with pid 16
pootle_1  | 2018-07-07 15:42:15,677 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:18,682 INFO spawned: 'pootle' with pid 18
pootle_1  | 2018-07-07 15:42:19,183 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:20,184 INFO gave up: pootle entered FATAL state, too many start retries too quickly
nginx_1   | 2018/07/07 15:45:03 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:03 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:24 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:24 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
^CGracefully stopping... (press Ctrl+C again to force)
Stopping pootle_nginx_1  ... done
Stopping pootle_pootle_1 ... done
Stopping pootle_redis_1  ... done
Stopping pootle_mysql_1  ... done

# fititnt at bravo in ~/tmp/pootle on git:master x [12:46:25]

# fititnt at bravo in ~/tmp/pootle on git:master x [12:46:25]
$ docker-compose exec pootle bash
ERROR: No container found for pootle_1

# fititnt at bravo in ~/tmp/pootle on git:master x [12:47:01]
$ docker-compose up -d           
Starting pootle_redis_1 ... done
Starting pootle_mysql_1 ... done
Starting pootle_pootle_1 ... done
Starting pootle_nginx_1  ... done

# fititnt at bravo in ~/tmp/pootle on git:master x [12:47:13]
$ docker-compose exec pootle bash
root@df43292b109f:/home/pootle# pootle migrate
2018-07-07 15:47:20,803 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:47:21,064 INFO Using Python PO
Operations to perform:
  Synchronize unmigrated apps: allauth, django_assets, django_rq, overextends
  Apply all migrations: account, pootle_store, pootle_language, virtualfolder, pootle_app, pootle_project, sites, auth, reports, contenttypes, pootle_translationproject, accounts, pootle_statistics, sessions, staticpages, socialaccount
Synchronizing apps without migrations:
  Creating tables...
  Installing custom SQL...
  Installing indexes...
Running migrations:
  Applying accounts.0001_initial... OK
  Applying account.0001_initial... OK
  Applying account.0002_email_max_length... OK
  Applying contenttypes.0001_initial... OK
  Applying auth.0001_initial... OK
  Applying pootle_app.0001_initial... OK
  Applying pootle_language.0001_initial... OK
  Applying accounts.0002_user_alt_src_langs... OK
  Applying accounts.0003_remove_pootleprofile_id... OK
  Applying pootle_project.0001_initial... OK
  Applying pootle_translationproject.0001_initial... OK
  Applying pootle_store.0001_initial... OK
  Applying pootle_app.0002_mark_empty_dirs_as_obsolete... OK
  Applying pootle_project.0002_remove_dynamic_model_choices_localfiletype... OK
  Applying pootle_statistics.0001_initial... OK
  Applying pootle_statistics.0002_update_submission_ordering... OK
  Applying pootle_store.0002_make_suggestion_user_not_null... OK
  Applying pootle_translationproject.0002_remove_translationproject_disabled... OK
  Applying reports.0001_initial... OK
  Applying sessions.0001_initial... OK
  Applying sites.0001_initial... OK
  Applying socialaccount.0001_initial... OK
  Applying socialaccount.0002_token_max_lengths... OK
  Applying socialaccount.0003_extra_data_default_dict... OK
  Applying staticpages.0001_initial... OK
  Applying staticpages.0002_change_url_field_help_text... OK
  Applying virtualfolder.0001_initial... OK
root@df43292b109f:/home/pootle# pootle initdb
2018-07-07 15:49:45,753 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:49:46,016 INFO Using Python PO
Populating the database.
Successfully populated the database.
To create an admin user, use the `pootle createsuperuser` command.
root@df43292b109f:/home/pootle# pootle createsuperuser
2018-07-07 15:50:07,256 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:50:07,521 INFO Using Python PO
Username: joomleiro
Email Address: rocha@ieee.org
Password: 
Password (again): 
Superuser created successfully.
root@df43292b109f:/home/pootle# pootle verify_user --all
2018-07-07 15:50:56,384 INFO Loading custom settings from '/root/.pootle/pootle.conf'...
2018-07-07 15:50:56,640 INFO Using Python PO
Verified user 'joomleiro'
root@df43292b109f:/home/pootle# quit
bash: quit: command not found
root@df43292b109f:/home/pootle# exit
exit

# fititnt at bravo in ~/tmp/pootle on git:master x [12:51:14]
$ docker ps                      
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                         NAMES
d7a24e838b09        pootle_nginx        "nginx -g 'daemon of…"   7 minutes ago       Up 4 minutes        0.0.0.0:80->80/tcp, 443/tcp   pootle_nginx_1
df43292b109f        pootle_pootle       "/usr/bin/supervisord"   9 minutes ago       Up 4 minutes        8080/tcp                      pootle_pootle_1
3260e7872e9d        redis               "docker-entrypoint.s…"   9 minutes ago       Up 4 minutes        6379/tcp                      pootle_redis_1
9f9fc59d3895        mariadb:10          "docker-entrypoint.s…"   9 minutes ago       Up 4 minutes        3306/tcp                      pootle_mysql_1

# fititnt at bravo in ~/tmp/pootle on git:master x [12:51:19]
$ docker-compose up              
pootle_redis_1 is up-to-date
pootle_mysql_1 is up-to-date
pootle_pootle_1 is up-to-date
pootle_nginx_1 is up-to-date
Attaching to pootle_redis_1, pootle_mysql_1, pootle_pootle_1, pootle_nginx_1
redis_1   | 1:C 07 Jul 15:42:07.677 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1   | 1:C 07 Jul 15:42:07.677 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1   | 1:C 07 Jul 15:42:07.677 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
redis_1   | 1:M 07 Jul 15:42:07.678 * Running mode=standalone, port=6379.
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1   | 1:M 07 Jul 15:42:07.678 # Server initialized
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1   | 1:M 07 Jul 15:42:07.678 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1   | 1:M 07 Jul 15:42:07.678 * Ready to accept connections
redis_1   | 1:signal-handler (1530978383) Received SIGTERM scheduling shutdown...
redis_1   | 1:M 07 Jul 15:46:23.295 # User requested shutdown...
redis_1   | 1:M 07 Jul 15:46:23.295 * Saving the final RDB snapshot before exiting.
redis_1   | 1:M 07 Jul 15:46:23.340 * DB saved on disk
redis_1   | 1:M 07 Jul 15:46:23.340 # Redis is now ready to exit, bye bye...
redis_1   | 1:C 07 Jul 15:47:10.963 # oO0OoO0OoO0Oo Redis is starting oO0OoO0OoO0Oo
redis_1   | 1:C 07 Jul 15:47:10.963 # Redis version=4.0.10, bits=64, commit=00000000, modified=0, pid=1, just started
redis_1   | 1:C 07 Jul 15:47:10.963 # Warning: no config file specified, using the default config. In order to specify a config file use redis-server /path/to/redis.conf
redis_1   | 1:M 07 Jul 15:47:10.964 * Running mode=standalone, port=6379.
redis_1   | 1:M 07 Jul 15:47:10.964 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
redis_1   | 1:M 07 Jul 15:47:10.964 # Server initialized
redis_1   | 1:M 07 Jul 15:47:10.964 # WARNING overcommit_memory is set to 0! Background save may fail under low memory condition. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
redis_1   | 1:M 07 Jul 15:47:10.964 # WARNING you have Transparent Huge Pages (THP) support enabled in your kernel. This will create latency and memory usage issues with Redis. To fix this issue run the command 'echo never > /sys/kernel/mm/transparent_hugepage/enabled' as root, and add it to your /etc/rc.local in order to retain the setting after a reboot. Redis must be restarted after THP is disabled.
redis_1   | 1:M 07 Jul 15:47:10.964 * DB loaded from disk: 0.000 seconds
redis_1   | 1:M 07 Jul 15:47:10.964 * Ready to accept connections
nginx_1   | 2018/07/07 15:45:03 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:03 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:24 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:24 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:45:25 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:45:25 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:51:04 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:51:04 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:51:05 [error] 7#7: *1 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:51:05 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
pootle_1  | /usr/lib/python2.7/dist-packages/supervisor/options.py:297: UserWarning: Supervisord is running as root and it is searching for its configuration file in default locations (including its current working directory); you probably want to specify a "-c" argument specifying an absolute path to a configuration file for improved security.
pootle_1  |   'Supervisord is running as root and it is searching '
pootle_1  | 2018-07-07 15:42:10,119 CRIT Supervisor running as root (no user in config file)
pootle_1  | 2018-07-07 15:42:10,119 WARN Included extra file "/etc/supervisor/conf.d/supervisord.conf" during parsing
pootle_1  | 2018-07-07 15:42:10,129 INFO RPC interface 'supervisor' initialized
pootle_1  | 2018-07-07 15:42:10,129 CRIT Server 'unix_http_server' running without any HTTP authentication checking
pootle_1  | 2018-07-07 15:42:10,129 INFO supervisord started with pid 1
pootle_1  | 2018-07-07 15:42:11,132 INFO spawned: 'cron' with pid 9
pootle_1  | 2018-07-07 15:42:11,134 INFO spawned: 'pootle' with pid 10
pootle_1  | 2018-07-07 15:42:11,136 INFO spawned: 'pootleworker' with pid 11
pootle_1  | 2018-07-07 15:42:11,736 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:12,737 INFO success: cron entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:42:12,739 INFO spawned: 'pootle' with pid 14
pootle_1  | 2018-07-07 15:42:12,739 INFO success: pootleworker entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:42:13,203 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:15,207 INFO spawned: 'pootle' with pid 16
pootle_1  | 2018-07-07 15:42:15,677 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:18,682 INFO spawned: 'pootle' with pid 18
pootle_1  | 2018-07-07 15:42:19,183 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:42:20,184 INFO gave up: pootle entered FATAL state, too many start retries too quickly
pootle_1  | 2018-07-07 15:46:21,361 WARN received SIGTERM indicating exit request
pootle_1  | 2018-07-07 15:46:21,361 INFO waiting for cron, pootleworker to die
pootle_1  | 2018-07-07 15:46:21,394 INFO stopped: pootleworker (exit status 0)
pootle_1  | 2018-07-07 15:46:22,397 INFO stopped: cron (terminated by SIGTERM)
pootle_1  | /usr/lib/python2.7/dist-packages/supervisor/options.py:297: UserWarning: Supervisord is running as root and it is searching for its configuration file in default locations (including its current working directory); you probably want to specify a "-c" argument specifying an absolute path to a configuration file for improved security.
pootle_1  |   'Supervisord is running as root and it is searching '
pootle_1  | 2018-07-07 15:47:12,157 CRIT Supervisor running as root (no user in config file)
pootle_1  | 2018-07-07 15:47:12,157 WARN Included extra file "/etc/supervisor/conf.d/supervisord.conf" during parsing
pootle_1  | 2018-07-07 15:47:12,179 INFO RPC interface 'supervisor' initialized
pootle_1  | 2018-07-07 15:47:12,180 CRIT Server 'unix_http_server' running without any HTTP authentication checking
pootle_1  | 2018-07-07 15:47:12,180 INFO supervisord started with pid 1
pootle_1  | 2018-07-07 15:47:13,182 INFO spawned: 'cron' with pid 10
pootle_1  | 2018-07-07 15:47:13,183 INFO spawned: 'pootle' with pid 11
pootle_1  | 2018-07-07 15:47:13,185 INFO spawned: 'pootleworker' with pid 12
pootle_1  | 2018-07-07 15:47:13,666 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:47:14,667 INFO success: cron entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:47:14,669 INFO spawned: 'pootle' with pid 15
pootle_1  | 2018-07-07 15:47:14,669 INFO success: pootleworker entered RUNNING state, process has stayed up for > than 1 seconds (startsecs)
pootle_1  | 2018-07-07 15:47:15,186 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:47:17,189 INFO spawned: 'pootle' with pid 27
pootle_1  | 2018-07-07 15:47:17,670 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:47:20,675 INFO spawned: 'pootle' with pid 29
pootle_1  | 2018-07-07 15:47:21,165 INFO exited: pootle (exit status 0; not expected)
pootle_1  | 2018-07-07 15:47:22,167 INFO gave up: pootle entered FATAL state, too many start retries too quickly
mysql_1   | Initializing database
mysql_1   | 
mysql_1   | 
mysql_1   | PLEASE REMEMBER TO SET A PASSWORD FOR THE MariaDB root USER !
mysql_1   | To do so, start the server, then issue the following commands:
mysql_1   | 
mysql_1   | '/usr/bin/mysqladmin' -u root password 'new-password'
mysql_1   | '/usr/bin/mysqladmin' -u root -h  password 'new-password'
mysql_1   | 
mysql_1   | Alternatively you can run:
mysql_1   | '/usr/bin/mysql_secure_installation'
mysql_1   | 
mysql_1   | which will also give you the option of removing the test
mysql_1   | databases and anonymous user created by default.  This is
mysql_1   | strongly recommended for production servers.
mysql_1   | 
mysql_1   | See the MariaDB Knowledgebase at http://mariadb.com/kb or the
mysql_1   | MySQL manual for more instructions.
mysql_1   | 
mysql_1   | Please report any problems at http://mariadb.org/jira
mysql_1   | 
mysql_1   | The latest information about MariaDB is available at http://mariadb.org/.
mysql_1   | You can find additional information about the MySQL part at:
mysql_1   | http://dev.mysql.com
mysql_1   | Consider joining MariaDB's strong and vibrant community:
mysql_1   | https://mariadb.org/get-involved/
mysql_1   | 
mysql_1   | Database initialized
mysql_1   | MySQL init process in progress...
mysql_1   | 2018-07-07 15:42:15 0 [Note] mysqld (mysqld 10.3.8-MariaDB-1:10.3.8+maria~jessie) starting as process 105 ...
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Using Linux native AIO
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Uses event mutexes
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Compressed tables use zlib 1.2.8
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Number of pools: 1
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Using SSE2 crc32 instructions
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Initializing buffer pool, total size = 256M, instances = 1, chunk size = 128M
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Completed initialization of buffer pool
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: 128 out of 128 rollback segments are active.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Waiting for purge to start
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: 10.3.8 started; log sequence number 1630824; transaction id 21
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:15 0 [Note] Plugin 'FEEDBACK' is disabled.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'user' entry 'root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'user' entry '@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:15 0 [Note] InnoDB: Buffer pool(s) load completed at 180707 15:42:15
mysql_1   | 2018-07-07 15:42:15 0 [Note] Reading of all Master_info entries succeded
mysql_1   | 2018-07-07 15:42:15 0 [Note] Added new Master_info '' to hash table
mysql_1   | 2018-07-07 15:42:15 0 [Note] mysqld: ready for connections.
mysql_1   | Version: '10.3.8-MariaDB-1:10.3.8+maria~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 0  mariadb.org binary distribution
mysql_1   | Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
mysql_1   | 2018-07-07 15:42:17 10 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 
mysql_1   | 2018-07-07 15:42:17 0 [Note] mysqld (initiated by: unknown): Normal shutdown
mysql_1   | 2018-07-07 15:42:17 0 [Note] Event Scheduler: Purging the queue. 0 events
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: FTS optimize thread exiting.
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Starting shutdown...
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:17 0 [Note] InnoDB: Buffer pool(s) dump completed at 180707 15:42:17
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Shutdown completed; log sequence number 1630833; transaction id 24
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld: Shutdown complete
mysql_1   | 
mysql_1   | 
mysql_1   | MySQL init process done. Ready for start up.
mysql_1   | 
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld (mysqld 10.3.8-MariaDB-1:10.3.8+maria~jessie) starting as process 1 ...
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Using Linux native AIO
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Uses event mutexes
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Compressed tables use zlib 1.2.8
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Number of pools: 1
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Using SSE2 crc32 instructions
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Initializing buffer pool, total size = 256M, instances = 1, chunk size = 128M
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Completed initialization of buffer pool
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: 128 out of 128 rollback segments are active.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Waiting for purge to start
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: 10.3.8 started; log sequence number 1630833; transaction id 21
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:42:19 0 [Note] Plugin 'FEEDBACK' is disabled.
mysql_1   | 2018-07-07 15:42:19 0 [Note] Server socket created on IP: '::'.
mysql_1   | 2018-07-07 15:42:19 0 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:42:19 0 [Note] InnoDB: Buffer pool(s) load completed at 180707 15:42:19
mysql_1   | 2018-07-07 15:42:19 0 [Note] Reading of all Master_info entries succeded
mysql_1   | 2018-07-07 15:42:19 0 [Note] Added new Master_info '' to hash table
mysql_1   | 2018-07-07 15:42:19 0 [Note] mysqld: ready for connections.
mysql_1   | Version: '10.3.8-MariaDB-1:10.3.8+maria~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  mariadb.org binary distribution
mysql_1   | 2018-07-07 15:46:23 0 [Note] mysqld (initiated by: unknown): Normal shutdown
mysql_1   | 2018-07-07 15:46:23 0 [Note] Event Scheduler: Purging the queue. 0 events
mysql_1   | 2018-07-07 15:46:23 0 [Note] InnoDB: FTS optimize thread exiting.
mysql_1   | 2018-07-07 15:46:23 0 [Note] InnoDB: Starting shutdown...
mysql_1   | 2018-07-07 15:46:23 0 [Note] InnoDB: Dumping buffer pool(s) to /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:46:23 0 [Note] InnoDB: Buffer pool(s) dump completed at 180707 15:46:23
mysql_1   | 2018-07-07 15:46:24 0 [Note] InnoDB: Shutdown completed; log sequence number 1630842; transaction id 22
mysql_1   | 2018-07-07 15:46:24 0 [Note] InnoDB: Removed temporary tablespace data file: "ibtmp1"
mysql_1   | 2018-07-07 15:46:24 0 [Note] mysqld: Shutdown complete
mysql_1   | 
mysql_1   | 2018-07-07 15:47:11 0 [Note] mysqld (mysqld 10.3.8-MariaDB-1:10.3.8+maria~jessie) starting as process 1 ...
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Using Linux native AIO
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Mutexes and rw_locks use GCC atomic builtins
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Uses event mutexes
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Compressed tables use zlib 1.2.8
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Number of pools: 1
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Using SSE2 crc32 instructions
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Initializing buffer pool, total size = 256M, instances = 1, chunk size = 128M
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Completed initialization of buffer pool
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: If the mysqld execution user is authorized, page cleaner thread priority can be changed. See the man page of setpriority().
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: 128 out of 128 rollback segments are active.
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Creating shared tablespace for temporary tables
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Setting file './ibtmp1' size to 12 MB. Physically writing the file full; Please wait ...
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: File './ibtmp1' size is now 12 MB.
mysql_1   | 2018-07-07 15:47:11 0 [Note] InnoDB: Waiting for purge to start
mysql_1   | 2018-07-07 15:47:12 0 [Note] InnoDB: 10.3.8 started; log sequence number 1630842; transaction id 21
mysql_1   | 2018-07-07 15:47:12 0 [Note] InnoDB: Loading buffer pool(s) from /var/lib/mysql/ib_buffer_pool
mysql_1   | 2018-07-07 15:47:12 0 [Note] Plugin 'FEEDBACK' is disabled.
mysql_1   | 2018-07-07 15:47:12 0 [Note] Server socket created on IP: '::'.
mysql_1   | 2018-07-07 15:47:12 0 [Warning] 'proxies_priv' entry '@% root@9f9fc59d3895' ignored in --skip-name-resolve mode.
mysql_1   | 2018-07-07 15:47:12 0 [Note] InnoDB: Buffer pool(s) load completed at 180707 15:47:12
mysql_1   | 2018-07-07 15:47:12 0 [Note] Reading of all Master_info entries succeded
mysql_1   | 2018-07-07 15:47:12 0 [Note] Added new Master_info '' to hash table
mysql_1   | 2018-07-07 15:47:12 0 [Note] mysqld: ready for connections.
mysql_1   | Version: '10.3.8-MariaDB-1:10.3.8+maria~jessie'  socket: '/var/run/mysqld/mysqld.sock'  port: 3306  mariadb.org binary distribution
mysql_1   | 2018-07-07 15:47:13 9 [Warning] Aborted connection 9 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:47:15 10 [Warning] Aborted connection 10 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:47:17 11 [Warning] Aborted connection 11 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:47:21 12 [Warning] Aborted connection 12 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:48:45 17 [Warning] Aborted connection 17 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:49:57 18 [Warning] Aborted connection 18 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:50:48 19 [Warning] Aborted connection 19 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
mysql_1   | 2018-07-07 15:50:56 20 [Warning] Aborted connection 20 to db: 'pootle_db' user: 'pootle' host: '172.18.0.4' (Got an error reading communication packets)
nginx_1   | 2018/07/07 15:52:29 [error] 7#7: *4 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:52:29 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:52:30 [error] 7#7: *4 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:52:30 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:52:31 [error] 7#7: *4 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:52:31 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:52:31 [error] 7#7: *4 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:52:31 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
nginx_1   | 2018/07/07 15:52:32 [error] 7#7: *4 connect() failed (111: Connection refused) while connecting to upstream, client: 172.18.0.1, server: , request: "GET / HTTP/1.1", upstream: "fastcgi://172.18.0.4:8080", host: "127.0.0.1"
nginx_1   | 172.18.0.1 - - [07/Jul/2018:15:52:32 +0000] "GET / HTTP/1.1" 502 576 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/66.0.3359.181 Chrome/66.0.3359.181 Safari/537.36" "-"
^CGracefully stopping... (press Ctrl+C again to force)
Stopping pootle_nginx_1  ... done
Stopping pootle_pootle_1 ... done
Stopping pootle_redis_1  ... done
Stopping pootle_mysql_1  ... done

# fititnt at bravo in ~/tmp/pootle on git:master x [12:53:02]

### fititnt: same error message as @enumag at https://github.com/1drop/pootle/issues/10