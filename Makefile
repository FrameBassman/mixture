setup:
	mix deps.get
	cp set-env.sh.example set-env.sh
	chmod +x set-env.sh
	${EDITOR} set-env.sh

build-dev:
	MIX_ENV=dev mix escript.build
