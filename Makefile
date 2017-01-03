build:
	mkdir -p lib
	rm -rf lib/*
	node_modules/.bin/coffee --compile -m --output lib/ src/

watch:
	node_modules/.bin/coffee --watch --compile --output lib/ src/
	
test:
	node_modules/.bin/mocha

jumpstart:
	curl -u 'braveg1rl' https://api.github.com/user/repos -d '{"name":"package-manipulator", "description":"Manipulates Node.js packages","private":false}'
	mkdir -p src
	touch src/package-manipulator.coffee
	mkdir -p test
	touch test/package-manipulator.coffee
	npm install
	git init
	git remote add origin git@github.com:braveg1rl/package-manipulator
	git add .
	git commit -m "jumpstart commit."
	git push -u origin master

.PHONY: test