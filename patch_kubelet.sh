 for i in 192.168.5.224 192.168.5.123 192.168.5.157 192.168.5.174 192.168.5.118 192.168.5.34; do echo $i && scp ./etc_sysconfig_kubelet capv@$i:/tmp/kubelet  ; done
 for i in 192.168.5.224 192.168.5.123 192.168.5.157 192.168.5.174 192.168.5.118 192.168.5.34; do ssh capv@$i sudo cp /tmp/kubelet /etc/sysconfig/kubelet  ; done
 for i in 192.168.5.224 192.168.5.123 192.168.5.157 192.168.5.174 192.168.5.118 192.168.5.34; do ssh capv@$i sudo systemctl restart kubelet  ; done

