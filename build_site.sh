#! /bin/bash

BASEDIR=$(dirname "$0")
# make find not print ./ and ignore anything starting with . or _
FIND="find . -path . -o -regex .*/[\._].* -prune -o"

if [ "$BASEDIR" != "." ]; then
	cd $BASEDIR
	dir="$BASEDIR/"
else
	dir=""
fi
rm -rf _site
install -d -m 755 _site
$FIND -type d -exec mkdir "_site/{}" \;
$FIND -type f -print0 | while read -d $'\0' file; do
	file="${file#./}"
	case "$file" in
		build_site.sh)
			;;
		*.html)
			;;
		a2cloud/*.md)
			echo -en "\rKRAMDOWN $dir$file ... [K"
			kramdown --template _layouts/a2cloud.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		a2server/*.md)
			echo -en "\rKRAMDOWN $dir$file ... [K"
			kramdown --template _layouts/a2server.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		rasppleii/*.md)
			echo -en "\rKRAMDOWN $dir$file ... [K"
			kramdown --template _layouts/rasppleii.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		*)
			echo -en "\rCOPY $dir$file ... [K"
			cp "$file" "_site/$file" || echo -e "cp returned $?\n"
			;;
	esac
	echo -e "\n[2A"
done
