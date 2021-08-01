# Special Version of lst
# Git status or ls

lst() {
	if [ -d '.git' ]
	then
		git status
	else
		ls -A -la
	fi
}