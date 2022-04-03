.ONESHELL:
LANGS := en fr

dev:
	mkdocs serve -a localhost:8008

bootstrap:
	pip install -r requirements.txt	

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
	# @debug: main level are removed because only one main title "#" per document, 
	cat data/quickdoc.$@.json | \
		jq -r '.[] | (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/shorts/help.$@.md
		#jq -r '.[] | ["# " + .name + "\n\n"] +  (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/shorts/help.$@.md
