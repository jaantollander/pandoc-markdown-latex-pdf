download-csl:
	./build.sh download_csl

pdf-print:
	./build.sh pdf_print

pdf-ereader:
	./build.sh pdf_ereader

all: pdf-print pdf-ereader

clean:
	./build.sh clean
