all: foxhounds fivefieldkono
foxhounds:
	rm src/*/*.class || true
	javac src/javaboard/*.java
	javac -classpath src src/foxhounds/*.java
	cd src; jar -cvfm ../foxhounds.jar foxhounds/Manifest.txt javaboard/*.class foxhounds/*.class

fivefieldkono:
	rm src/*/*.class || true
	javac src/javaboard/*.java
	javac -classpath src src/fivefieldkono/*.java
	cd src; jar -cvfm ../fivefieldkono.jar fivefieldkono/Manifest.txt javaboard/*.class fivefieldkono/*.class
