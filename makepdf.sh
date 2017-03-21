python3 -m http.server 8901 &
trap 'kill $(jobs -p)' EXIT SIGINT

DECKTAPE="/home/uranix/decktape-1.0.0/phantomjs /home/uranix/decktape-1.0.0/decktape.js -s 1920x1080"

for path in jupyter-slides/*; do
	fn=$(echo $path | cut -f 2 -d '/' || $1)
	num=$(echo $fn | cut -f 1 -d '-')
	name=$(echo $fn | cut -f 2 -d '-')
	if [ -f pdf/$name.pdf ]; then
		continue;
	fi

	${DECKTAPE} http://localhost:8901/$num/$name.slides.html pdf/$name.pdf
done

kill $!
