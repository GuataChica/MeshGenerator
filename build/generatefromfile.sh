if [ "$#" -ne 1 ];  then
    echo -e "Usage: $0 <number of vertices>" >&2
    exit
fi



namefile="$1"

node_file="${namefile}.node"
ele_file="${namefile}.ele"
neigh_file="${namefile}.neigh"
pg_file="${namefile}.pg"
output="${namefile}"


echo -n "Generating mesh with ${namefile} file..."

echo -n "Generating mesh..."
make && ./meshGenerator ${node_file} ${ele_file} ${neigh_file} ${output}
rm ${pg_file}
