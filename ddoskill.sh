log_location=/var/log/httpd/addicted2tech_access.log
declare -a MYARRAY
raw_ip=($(awk '$1 !~ /^10\.18[0-9]?\.[0-9]+\.[0-9]+$/ {print $1}' < "$log_location"  | sort | uniq -c | sort -nr | head -n10 | awk '{print $2}'))
# echo ${raw_ip[@]} | xargs -n 1 whois -n -s -a | grep -vE "#|\[|^$" | grep -E "Organization:" | ( awk -F ":   " '{print $2}')Rackspace Hosting (RACKS-8)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)
Internet Service Solution Corp. (ISSC-11)

while read -r MYLINE || [[ -n "$MYLINE" ]]; do MYARRAY+=("$MYLINE");done <<< echo ${raw_ip[@]} | xargs -n 1 whois -n -s -a | grep -vE "#|\[|^$" | grep -E "Organization:" | ( awk -F ":   " '{print $2}')
-bash: syntax error near unexpected token `${raw_ip[@]}'

echo ${raw_ip[@]} | xargs -n 1 whois -n -s -a | grep -vE "#|\[|^$" | grep -E "Organization:" | ( awk -F ":   " '{print $2}') | while read -r MYLINE; do MYARRAY+=("$MYLINE");done;

[root@pf-web ~]# echo ${MYARRAY[@]}

[root@pf-web ~]#
