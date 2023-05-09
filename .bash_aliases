function compile() {
	# Check that at least two arguments were passed
	if [ $# -lt 1 ]; then
		echo "Usage: compile <file1.c> <file2.c> [<file3.c> ...]"
		return 1
	fi

	read -p "Enter the output file name: " output_file

	# Compile the files into the output file
	echo "Compiling...⏳"
	if gcc -Wall -Wextra -Werror -pedantic "$@" -o "$output_file"; then
		echo "All done boss ✅"
	else
		echo "Compilation failed ❌"
		return 1
	fi
}
