help: ## show this help
	@sed -ne "s/^##\(.*\)/\1/p" $(MAKEFILE_LIST)
	@printf "────────────────────────`tput bold``tput setaf 2` Make Commands `tput sgr0`────────────────────────────────\n"
	@sed -ne "/@sed/!s/\(^[^#?=]*:\).*##\(.*\)/`tput setaf 2``tput bold`\1`tput sgr0`\2/p" $(MAKEFILE_LIST)

# remove if you want another default.
.DEFAULT_GOAL := help

install: ## Installs latex template for global use in pandoc
	install -D ~/texmf/tex/latex/custom/assignments.cls assignments.cls

remove: ## removes custom class from texmf directory
	rm ~/texmf/tex/latex/custom/assignments.cls

clean: ## only use this if you are sure you do not have any other custom classes or latex configuration
	rm -rf ~/texmf

