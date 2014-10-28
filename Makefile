all: go-netkoth-httpd-amd64 go-netkoth-httpd-i386 go-netkoth-httpd-amd64.exe go-netkoth-httpd-i386.exe

go-netkoth-httpd-amd64:
	GOARCH=amd64 go build -o go-netkoth-httpd-amd64

go-netkoth-httpd-i386:
	GOARCH=386 go build -o go-netkoth-httpd-i386

go-netkoth-httpd-amd64.exe:
	GOOS=windows GOARCH=amd64 go build -o go-netkoth-httpd-amd64.exe

go-netkoth-httpd-i386.exe:
	GOOS=windows GOARCH=386 go build -o go-netkoth-httpd-i386.exe
