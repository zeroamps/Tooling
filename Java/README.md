# Hello Java!

This repository is created just for playing with Java.

***
How to add a certificate the truststore
The default password for the truststore: changeit

keytool -importcert -file localhost.crt -keystore "%JAVA_HOME%\lib\security\cacerts" -alias "localhost"
***
