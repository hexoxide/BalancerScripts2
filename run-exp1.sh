#!/bin/bash

iterations=$1

for i in $(seq 1 $iterations)
do
	echo "Starting iteration.."
	ansible-playbook -i /etc/ansible/hosts /home/pi/ansible-playbooks/exp1.yaml  --extra-vars "msg_size=2900 num_flp=1 &"
	echo "Finishing iteration.."
	PID1=$!
	wait $PID1
done

