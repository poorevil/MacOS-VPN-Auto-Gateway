
#!/bin/sh
export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

if [ ! -e /tmp/pptp_oldgw ]; then
        exit 0
fi

ODLGW=`cat /tmp/pptp_oldgw`

route delete 10.0.0.0/8 ${OLDGW}
route delete 127.0.0.0/8 ${OLDGW}

