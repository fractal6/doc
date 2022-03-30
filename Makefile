.ONESHELL:
LANGS := en fr

bootstrap:
	pip install mkdocs
	#pip install mkdocs-bootswatch
	pip install mkdocs-material
	pip install mkdocs-static-i18n
	

docs: $(LANGS)

$(LANGS):
	# requirements:
	# pip install wildq
	# apt install jq
	# Make json doc for fractale.co help
	wildq -M -i toml -o json '.[] | {name:.name, tasks:.tasks[]|flatten }' shorts/doc.$@.toml > data/quickdoc.$@.json_
	jq -s "." data/quickdoc.$@.json_ > data/quickdoc.$@.json
	rm -f data/quickdoc.$@.json_

	# json doc to markdown
	cat data/quickdoc.$@.json | \
		jq -r '.[] | ["# " + .name + "\n"] +  (.tasks | map("## " + .header + "\n" + .content + "\n" )) | .[]' > docs/shorts/help.$@.md
