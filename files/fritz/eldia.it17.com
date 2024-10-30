;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	eldia.it17.com. root.eldia.it17.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	eldia.it17.com.
@	IN	A	10.72.2.2
@	IN	AAAA	::1