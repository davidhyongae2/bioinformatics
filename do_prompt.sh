#Peek, J. D., O'Reilly, T., & Loukides, M. (2003). Unix power tools (3rd ed.). O'Reilly & Associates. 
#4.4 Simulating Dynamic prompts
#Bash 쉘과,Unix 터미널~ 이 선생님의 설명한 컴퓨터생물학.
#Bioinformatics command-line tracker

do_prompt() {
	day=`date '+%D %T'`
	dir=`echo $PWD | sed "s@$HOME@~@"`
	echo "$day"
	echo "$dir"
	file='file1.txt'
	printf "[%s] %s\n" "$day" "$dir" >> "$file"
	program_name=`nohup program_name`
	printf "[%s\n]" "$program_name" >> "$file"

}
do_prompt





