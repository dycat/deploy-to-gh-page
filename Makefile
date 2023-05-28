# BASEDIR=$(CURDIR)
# GITHUB_PAGES_BRANCH=gh-pages
# OUTPUTDIR=$(BASEDIR)/output

build:
	docker build -v -t ghpage .

rm:
	docker rm ghpage
	docker image rm ghpage

# github: publish
# 	ghp-import -m "Generate Pelican site" -b $(GITHUB_PAGES_BRANCH) $(OUTPUTDIR)
# 	git push origin $(GITHUB_PAGES_BRANCH)