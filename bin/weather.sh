#!/bin/bash


info=$(curl -Ss 'https://wttr.in?0&T&Q')
echo $info

weather=$(echo $info|perl -pe 's/(\A[a-zA-Z]+)\+.*/$1/')
echo $weather

# clear
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==1' | awk '{print $NF}'
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==2' | awk '{print $(NF-1)" "$NF}'
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==2' | awk '{print $(NF-1)" "$NF}'
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==3' | awk '{print $(NF-2)" "$(NF-1)" "$NF}'
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==4' | awk '{print $(NF-1)" "$NF}'
# curl -Ss 'https://wttr.in?&T&Q'| awk 'NR==5' | awk '{print $(NF-1)" "$NF}'
