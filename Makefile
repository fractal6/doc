.ONESHELL:
LANGS := en fr

dev:
	mkdocs serve -a localhost:8008

install:
	apt install jq
	snap install yq
	pip install -r requirements.txt	

quickdoc: $(LANGS)

$(LANGS):
	# requirements:
	# Make json doc for fractale.co help
	yq -o json  '.' shorts/doc.$@.toml | \
		jq 'to_entries[] | {name: .value.name, tasks: [.value.tasks | to_entries[] | {name: .key, header: .value.header, content: .value.content}]}' | \
		jq -s > _data/quickdoc.$@.json

	# json doc to markdown
	# @debug: main level are removed because only one main title "#" per document, 
	cat _data/quickdoc.$@.json | \
		jq -r '.[] | (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/_shorts/help.$@.md
		#jq -r '.[] | ["# " + .name + "\n\n"] +  (.tasks | map("## " + .header + "\n\n" + .content + "\n" )) | .[]' > docs/_shorts/help.$@.md
