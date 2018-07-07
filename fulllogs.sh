
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