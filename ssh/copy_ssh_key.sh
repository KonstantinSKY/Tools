


echo Copy ssh key to remote PC:

name=$NAME
ip="192.168.0.75"
port=22


read -p "Enter the new ssh user name, like $name: " name
read -p "Enter the new ipname, like $ip: " ip
read -p "Enter the new port, like $port: " port
comm="ssh-copy-id -p $port $name@$ip"

echo Copying ssh key by command : $comm ...

$comm

echo Trying to connect to $ip ...

ssh $name@$ip -p $port

