
if [ "$1" == "--proxy" ]; then
    if [ "$2" != "" ]; then
        echo "$2" "proxy setup"
        export http_proxy=http://DOMAIN\USERNAME:PASSWORD@SERVER:PORT/
        export ftp_proxy=http://DOMAIN\USERNAME:PASSWORD@SERVER:PORT/
    else
        echo "No default proxy, AMRES assumed"
        export http_proxy=http://rcub.bg.ac.rs
        export https_proxy=http://rcub.bg.ac.rs
        export ftp_proxy=http://rcub.bg.ac.rs
    fi
else
    echo "Standard setup."
fi
