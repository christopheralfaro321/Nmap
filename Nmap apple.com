┌──(kali㉿kali)-[~]
└─$ nmap -v -A apple.com    
Starting Nmap 7.92 ( https://nmap.org ) at 2022-03-20 18:54 EDT
NSE: Loaded 155 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 18:54
Completed NSE at 18:54, 0.00s elapsed
Initiating NSE at 18:54
Completed NSE at 18:54, 0.00s elapsed
Initiating NSE at 18:54
Completed NSE at 18:54, 0.00s elapsed
Initiating Ping Scan at 18:54
Scanning apple.com (17.253.144.10) [2 ports]
Completed Ping Scan at 18:54, 0.01s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 18:54
Completed Parallel DNS resolution of 1 host. at 18:54, 0.34s elapsed
Initiating System DNS resolution of 1 host. at 18:54
Completed System DNS resolution of 1 host. at 18:54, 0.36s elapsed
Initiating Connect Scan at 18:54
Scanning apple.com (17.253.144.10) [1000 ports]
Discovered open port 80/tcp on 17.253.144.10
Discovered open port 443/tcp on 17.253.144.10
Completed Connect Scan at 18:54, 4.77s elapsed (1000 total ports)
Initiating Service scan at 18:54
Scanning 2 services on apple.com (17.253.144.10)
Completed Service scan at 18:55, 13.18s elapsed (2 services on 1 host)
NSE: Script scanning 17.253.144.10.
Initiating NSE at 18:55
Completed NSE at 18:55, 8.58s elapsed
Initiating NSE at 18:55
Completed NSE at 18:55, 1.23s elapsed
Initiating NSE at 18:55
Completed NSE at 18:55, 0.00s elapsed
Nmap scan report for apple.com (17.253.144.10)
Host is up (0.0073s latency).
rDNS record for 17.253.144.10: apple.ca
Not shown: 998 filtered tcp ports (no-response)
PORT    STATE SERVICE   VERSION
80/tcp  open  http
| fingerprint-strings: 
|   HTTPOptions: 
|     HTTP/1.0 400 Host Header Required
|     Date: Sun, 20 Mar 2022 22:55:04 GMT
|     Via: http/1.1 usnyc3-edge-bx-015.ts.apple.com (acdn/141.13253)
|     Cache-Control: no-store
|     Content-Type: text/html
|     Content-Language: en
|     X-Cache: none
|     CDNUUID: e27583e2-6a87-4004-87db-d65410d2b774-3332236228
|     Content-Length: 447
|     <HTML>
|     <HEAD>
|     <TITLE>Host Header Required</TITLE>
|     </HEAD>
|     <BODY BGCOLOR="white" FGCOLOR="black">
|     <H1>Host Header Required</H1>
|     <HR>
|     <FONT FACE="Helvetica,Arial"><B>
|     Description: Your browser did not send a "Host" HTTP header field
|     therefore the virtual host being requested could not be determined.
|     access this web site correctly, you will need to upgrade to a browser
|     that supports the HTTP "Host" header field.
|     </B></FONT>
|     <HR>
|     </BODY>
|   RTSPRequest: 
|     HTTP/1.0 400 Invalid HTTP Request
|     Date: Sun, 20 Mar 2022 22:55:04 GMT
|     Via: http/1.1 usnyc3-edge-bx-011.ts.apple.com (acdn/141.13253)
|     Cache-Control: no-store
|     Content-Type: text/html
|     Content-Language: en
|     X-Cache: none
|     CDNUUID: 303b0eb4-15c9-45ea-b099-8ee7fe367f24-3324954512
|     Content-Length: 219
|     <HTML>
|     <HEAD>
|     <TITLE>Bad Request</TITLE>
|     </HEAD>
|     <BODY BGCOLOR="white" FGCOLOR="black">
|     <H1>Bad Request</H1>
|     <HR>
|     <FONT FACE="Helvetica,Arial"><B>
|     Description: Could not process this request.
|     </B></FONT>
|     <HR>
|     </BODY>
|   X11Probe: 
|     HTTP/1.0 400 Invalid HTTP Request
|     Date: Sun, 20 Mar 2022 22:55:04 GMT
|     Via: http/1.1 usnyc3-edge-bx-003.ts.apple.com (acdn/141.13253)
|     Cache-Control: no-store
|     Content-Type: text/html
|     Content-Language: en
|     X-Cache: none
|     CDNUUID: f3760971-3229-400a-ba92-3fae90098d99-3330992996
|     Content-Length: 219
|     <HTML>
|     <HEAD>
|     <TITLE>Bad Request</TITLE>
|     </HEAD>
|     <BODY BGCOLOR="white" FGCOLOR="black">
|     <H1>Bad Request</H1>
|     <HR>
|     <FONT FACE="Helvetica,Arial"><B>
|     Description: Could not process this request.
|     </B></FONT>
|     <HR>
|_    </BODY>
443/tcp open  ssl/https
| fingerprint-strings: 
|   GetRequest: 
|     HTTP/1.0 400 Host Header Required
|     Date: Sun, 20 Mar 2022 22:55:05 GMT
|     Via: http/1.1 usnyc3-edge-bx-019.ts.apple.com (acdn/141.13253)
|     Cache-Control: no-store
|     Content-Type: text/html
|     Content-Language: en
|     X-Cache: none
|     CDNUUID: d36ea9a1-7a5b-4f8f-9b8e-98056ee62a82-3289740356
|     Content-Length: 447
|     <HTML>
|     <HEAD>
|     <TITLE>Host Header Required</TITLE>
|     </HEAD>
|     <BODY BGCOLOR="white" FGCOLOR="black">
|     <H1>Host Header Required</H1>
|     <HR>
|     <FONT FACE="Helvetica,Arial"><B>
|     Description: Your browser did not send a "Host" HTTP header field
|     therefore the virtual host being requested could not be determined.
|     access this web site correctly, you will need to upgrade to a browser
|     that supports the HTTP "Host" header field.
|     </B></FONT>
|     <HR>
|     </BODY>
|   HTTPOptions: 
|     HTTP/1.0 400 Host Header Required
|     Date: Sun, 20 Mar 2022 22:55:05 GMT
|     Via: http/1.1 usnyc3-edge-bx-007.ts.apple.com (acdn/141.13253)
|     Cache-Control: no-store
|     Content-Type: text/html
|     Content-Language: en
|     X-Cache: none
|     CDNUUID: 8eec82cd-d82c-424c-9338-b7ddf83c0af3-3346460779
|     Content-Length: 447
|     <HTML>
|     <HEAD>
|     <TITLE>Host Header Required</TITLE>
|     </HEAD>
|     <BODY BGCOLOR="white" FGCOLOR="black">
|     <H1>Host Header Required</H1>
|     <HR>
|     <FONT FACE="Helvetica,Arial"><B>
|     Description: Your browser did not send a "Host" HTTP header field
|     therefore the virtual host being requested could not be determined.
|     access this web site correctly, you will need to upgrade to a browser
|     that supports the HTTP "Host" header field.
|     </B></FONT>
|     <HR>
|_    </BODY>
| ssl-cert: Subject: commonName=apple.com/organizationName=Apple Inc./stateOrProvinceName=California/countryName=US
| Subject Alternative Name: DNS:apple.com
| Issuer: commonName=Apple Public EV Server ECC CA 1 - G1/organizationName=Apple Inc./countryName=US
| Public Key type: ec
| Public Key bits: 256
| Signature Algorithm: ecdsa-with-SHA256
| Not valid before: 2021-06-22T11:26:36
| Not valid after:  2022-07-22T11:26:35
| MD5:   bc88 0be0 771b 9a35 177d c778 13c9 07e4
|_SHA-1: f3cd 41a6 035b a1b1 be16 7038 6918 8937 3436 3e53
| http-methods: 
|_  Supported Methods: GET HEAD POST OPTIONS
| tls-nextprotoneg: 
|   h2
|   http/1.1
|_  http/1.0
| tls-alpn: 
|   h2
|   http/1.1
|_  http/1.0
|_ssl-date: TLS randomness does not represent time
|_http-title: Did not follow redirect to https://www.apple.com/
2 services unrecognized despite returning data. If you know the service/version, please submit the following fingerprints at https://nmap.org/cgi-bin/submit.cgi?new-service :
==============NEXT SERVICE FINGERPRINT (SUBMIT INDIVIDUALLY)==============
SF-Port80-TCP:V=7.92%I=7%D=3/20%Time=6237B0C6%P=x86_64-pc-linux-gnu%r(HTTP
SF:Options,2EF,"HTTP/1\.0\x20400\x20Host\x20Header\x20Required\r\nDate:\x2
SF:0Sun,\x2020\x20Mar\x202022\x2022:55:04\x20GMT\r\nVia:\x20http/1\.1\x20u
SF:snyc3-edge-bx-015\.ts\.apple\.com\x20\(acdn/141\.13253\)\r\nCache-Contr
SF:ol:\x20no-store\r\nContent-Type:\x20text/html\r\nContent-Language:\x20e
SF:n\r\nX-Cache:\x20none\r\nCDNUUID:\x20e27583e2-6a87-4004-87db-d65410d2b7
SF:74-3332236228\r\nContent-Length:\x20447\r\n\r\n<HTML>\n<HEAD>\n<TITLE>H
SF:ost\x20Header\x20Required</TITLE>\n</HEAD>\n\n<BODY\x20BGCOLOR=\"white\
SF:"\x20FGCOLOR=\"black\">\n<H1>Host\x20Header\x20Required</H1>\n<HR>\n\n<
SF:FONT\x20FACE=\"Helvetica,Arial\"><B>\nDescription:\x20Your\x20browser\x
SF:20did\x20not\x20send\x20a\x20\"Host\"\x20HTTP\x20header\x20field\nand\x
SF:20therefore\x20the\x20virtual\x20host\x20being\x20requested\x20could\x2
SF:0not\x20be\x20determined\.\nTo\x20access\x20this\x20web\x20site\x20corr
SF:ectly,\x20you\x20will\x20need\x20to\x20upgrade\x20to\x20a\x20browser\nt
SF:hat\x20supports\x20the\x20HTTP\x20\"Host\"\x20header\x20field\.\n</B></
SF:FONT>\n<HR>\n</BODY>\n")%r(RTSPRequest,20B,"HTTP/1\.0\x20400\x20Invalid
SF:\x20HTTP\x20Request\r\nDate:\x20Sun,\x2020\x20Mar\x202022\x2022:55:04\x
SF:20GMT\r\nVia:\x20http/1\.1\x20usnyc3-edge-bx-011\.ts\.apple\.com\x20\(a
SF:cdn/141\.13253\)\r\nCache-Control:\x20no-store\r\nContent-Type:\x20text
SF:/html\r\nContent-Language:\x20en\r\nX-Cache:\x20none\r\nCDNUUID:\x20303
SF:b0eb4-15c9-45ea-b099-8ee7fe367f24-3324954512\r\nContent-Length:\x20219\
SF:r\n\r\n<HTML>\n<HEAD>\n<TITLE>Bad\x20Request</TITLE>\n</HEAD>\n\n<BODY\
SF:x20BGCOLOR=\"white\"\x20FGCOLOR=\"black\">\n<H1>Bad\x20Request</H1>\n<H
SF:R>\n\n<FONT\x20FACE=\"Helvetica,Arial\"><B>\nDescription:\x20Could\x20n
SF:ot\x20process\x20this\x20request\.\n</B></FONT>\n<HR>\n</BODY>\n")%r(X1
SF:1Probe,20B,"HTTP/1\.0\x20400\x20Invalid\x20HTTP\x20Request\r\nDate:\x20
SF:Sun,\x2020\x20Mar\x202022\x2022:55:04\x20GMT\r\nVia:\x20http/1\.1\x20us
SF:nyc3-edge-bx-003\.ts\.apple\.com\x20\(acdn/141\.13253\)\r\nCache-Contro
SF:l:\x20no-store\r\nContent-Type:\x20text/html\r\nContent-Language:\x20en
SF:\r\nX-Cache:\x20none\r\nCDNUUID:\x20f3760971-3229-400a-ba92-3fae90098d9
SF:9-3330992996\r\nContent-Length:\x20219\r\n\r\n<HTML>\n<HEAD>\n<TITLE>Ba
SF:d\x20Request</TITLE>\n</HEAD>\n\n<BODY\x20BGCOLOR=\"white\"\x20FGCOLOR=
SF:\"black\">\n<H1>Bad\x20Request</H1>\n<HR>\n\n<FONT\x20FACE=\"Helvetica,
SF:Arial\"><B>\nDescription:\x20Could\x20not\x20process\x20this\x20request
SF:\.\n</B></FONT>\n<HR>\n</BODY>\n");
==============NEXT SERVICE FINGERPRINT (SUBMIT INDIVIDUALLY)==============
SF-Port443-TCP:V=7.92%T=SSL%I=7%D=3/20%Time=6237B0C7%P=x86_64-pc-linux-gnu
SF:%r(GetRequest,2EF,"HTTP/1\.0\x20400\x20Host\x20Header\x20Required\r\nDa
SF:te:\x20Sun,\x2020\x20Mar\x202022\x2022:55:05\x20GMT\r\nVia:\x20http/1\.
SF:1\x20usnyc3-edge-bx-019\.ts\.apple\.com\x20\(acdn/141\.13253\)\r\nCache
SF:-Control:\x20no-store\r\nContent-Type:\x20text/html\r\nContent-Language
SF::\x20en\r\nX-Cache:\x20none\r\nCDNUUID:\x20d36ea9a1-7a5b-4f8f-9b8e-9805
SF:6ee62a82-3289740356\r\nContent-Length:\x20447\r\n\r\n<HTML>\n<HEAD>\n<T
SF:ITLE>Host\x20Header\x20Required</TITLE>\n</HEAD>\n\n<BODY\x20BGCOLOR=\"
SF:white\"\x20FGCOLOR=\"black\">\n<H1>Host\x20Header\x20Required</H1>\n<HR
SF:>\n\n<FONT\x20FACE=\"Helvetica,Arial\"><B>\nDescription:\x20Your\x20bro
SF:wser\x20did\x20not\x20send\x20a\x20\"Host\"\x20HTTP\x20header\x20field\
SF:nand\x20therefore\x20the\x20virtual\x20host\x20being\x20requested\x20co
SF:uld\x20not\x20be\x20determined\.\nTo\x20access\x20this\x20web\x20site\x
SF:20correctly,\x20you\x20will\x20need\x20to\x20upgrade\x20to\x20a\x20brow
SF:ser\nthat\x20supports\x20the\x20HTTP\x20\"Host\"\x20header\x20field\.\n
SF:</B></FONT>\n<HR>\n</BODY>\n")%r(HTTPOptions,2EF,"HTTP/1\.0\x20400\x20H
SF:ost\x20Header\x20Required\r\nDate:\x20Sun,\x2020\x20Mar\x202022\x2022:5
SF:5:05\x20GMT\r\nVia:\x20http/1\.1\x20usnyc3-edge-bx-007\.ts\.apple\.com\
SF:x20\(acdn/141\.13253\)\r\nCache-Control:\x20no-store\r\nContent-Type:\x
SF:20text/html\r\nContent-Language:\x20en\r\nX-Cache:\x20none\r\nCDNUUID:\
SF:x208eec82cd-d82c-424c-9338-b7ddf83c0af3-3346460779\r\nContent-Length:\x
SF:20447\r\n\r\n<HTML>\n<HEAD>\n<TITLE>Host\x20Header\x20Required</TITLE>\
SF:n</HEAD>\n\n<BODY\x20BGCOLOR=\"white\"\x20FGCOLOR=\"black\">\n<H1>Host\
SF:x20Header\x20Required</H1>\n<HR>\n\n<FONT\x20FACE=\"Helvetica,Arial\"><
SF:B>\nDescription:\x20Your\x20browser\x20did\x20not\x20send\x20a\x20\"Hos
SF:t\"\x20HTTP\x20header\x20field\nand\x20therefore\x20the\x20virtual\x20h
SF:ost\x20being\x20requested\x20could\x20not\x20be\x20determined\.\nTo\x20
SF:access\x20this\x20web\x20site\x20correctly,\x20you\x20will\x20need\x20t
SF:o\x20upgrade\x20to\x20a\x20browser\nthat\x20supports\x20the\x20HTTP\x20
SF:\"Host\"\x20header\x20field\.\n</B></FONT>\n<HR>\n</BODY>\n");

NSE: Script Post-scanning.
Initiating NSE at 18:55
Completed NSE at 18:55, 0.00s elapsed
Initiating NSE at 18:55
Completed NSE at 18:55, 0.00s elapsed
Initiating NSE at 18:55
Completed NSE at 18:55, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 29.08 seconds
