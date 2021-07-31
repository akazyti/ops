TEMPLATES_DIR="~/Templates"

if [ -d "$TEMPLATES_DIR" ]
then
	cp ./templates/* "$TEMPLATES_DIR";
fi