
build: gulp
	# Building...
	bundle exec jekyll build

gulp:
	# gulp modules

clean:
	rm Gemfile.lock
	rm -rf ./_site
	rm -rf ./node_modules
	rm .sass-cache
	rm .jekyll-metadata

push:
	aws s3 blah blah push

serve: gulp
	# Funky workaround to get web browser to launch page after we build and
	# start the server since `jekyll serve` blocks till Ctrl+C. If building
	# takes longer than 5 seconds, adjust accordingly
	sleep 5 && xdg-open http://localhost:4000/ &
	bundle exec jekyll serve

install:
	# Run before building on new system to install dependent packages
	bundle install
	npm install
