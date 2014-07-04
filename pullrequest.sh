echo "a quién quieres hacerle el PR? (poner usuario github)"
read remote

echo "con qué rama quieres mezclar?"
read sprint

sensible-browser "https://github.com/"$(git config -l|grep remote.origin.url|awk -F "\:" '{print $2}'|awk -F "\/" '{print $1}')"/packlink-core/compare/"$remote":"$sprint"..."$(git rev-parse --abbrev-ref HEAD)"?expand=1"