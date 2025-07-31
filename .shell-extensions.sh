ansible_shell() {
    local nodes=${1:-'all'}
    local cmd=${2:-'hostname'}
    echo "ansible -i $INVENTORY_FILE $nodes -m shell -a \"$cmd\""
    ansible -i $INVENTORY_FILE $nodes -m shell -a "$cmd"
}
