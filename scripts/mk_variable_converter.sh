#!/bin/bash

#######################################################################

# Print all variables used in Android.mk script, in three steps.

# 1. Extract variables from the script by executing the following command in the shell:
#    grep '=' ./script_name.mk | sed -E 's/^[[:space:]]*([^[:space:]]+).*$/\1/' | grep -v \# | sort | uniq > ./script_name.mk.vars.stripped
#    This command retrieves all variables defined in the Android.mk script and saves them to a file called "script_name.mk.vars.stripped".
 

# 2. Run this script to convert variables list into a printing script. Execute the following command:
#    ./mk_variable_converster.sh ./script_name.mk.vars.stripped

# 3. Include the generated printing script in a Makefile where variables need to be printed. Add the following line to the Makefile:
#  -include /tmp/print_vars.mk
#  This includes the printing script, enabling the Makefile to output all variables.

#######################################################################

# Input file containing variable names
input_file=${1}

# Output file where replaced content will be written
output_file="/tmp/print_vars.mk"

echo "\$(info *********** VARIABLES *****************)" > "$output_file"
# Loop through each line in the input file
while IFS= read -r var_name; do
    # Replace each line in the output file with the desired format
    echo "ifneq (\$($var_name),)" >> "$output_file"
    echo "    \$(info $var_name = \$($var_name))" >> "$output_file"
    echo "endif" >> "$output_file"
    echo "#######################################" >> "$output_file"
done < "$input_file"