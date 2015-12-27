#! /bin/bash

BASEDIR=$(dirname "$0")
# make find not print ./ and ignore anything starting with . or _
FIND="find . -path . -o -regex .*/[\._].* -prune -o"

cd $BASEDIR
rm -rf _site
install -d -m 755 _site
$FIND -type d -exec mkdir "_site/{}" \;
$FIND -type f -print0 | while read -d $'\0' file; do
	case "$file" in
		./build_site.sh)
			;;
		*.html)
			;;
		./a2cloud/*.md)
			kramdown --template _layouts/a2cloud.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		./a2server/*.md)
			kramdown --template _layouts/a2server.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		./rasppleii/*.md)
			kramdown --template _layouts/rasppleii.html "$file" \
				> _site/$(dirname "$file")/$(basename -s ".md" "$file").html
			;;
		*)
			cp "$file" "_site/$file"
			;;
	esac
done
