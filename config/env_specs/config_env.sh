echo ""
echo "Username: $1"
echo "Machine name: $2"
echo ""

source env_variables_$1_$2.sh
../../source_data_selection/select_data_source source_data_locations_$1_$2.ini