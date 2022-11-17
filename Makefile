.ONESHELL:
LANGS := en fr

dev:
	mkdocs serve -a localhost:8008

install:
	pip install -r requirements.txt	

quickdoc: $(LANGS)

$(LANGS):
	# requirements:
	# pip install wildq
	# apt install jq
	# Make json doc for fractale.co help
	wildq -M -i toml -o json '.[] | {name:.name, tasks:.tasks[]|flatten }' shorts/doc.$@.toml > _data/quickdoc.$@.json_
	jq -s "." _data/quickdoc.$@.json_ > _data/quickdoc.$@.json
	rm -f _data/quickdoc.$@.json_

	# json doc to markdown
	# @debug: main level are removed because only one main title "#" per document, 
	cat _data/quickdoc.$@.json | \
		jq -r '.[] | (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/_shorts/help.$@.md
		#jq -r '.[] | ["# " + .name + "\n\n"] +  (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/_shorts/help.$@.md
