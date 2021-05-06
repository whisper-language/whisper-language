java -jar antlr-4.9.2-complete.jar -Dlanguage=Swift ./TL.g4 -o swift/gen

java -jar antlr-4.9.2-complete.jar -Dlanguage=Dart -visitor ./TL.g4 -o dart/tl/bin/gen