### Menu

.DEFAULT_GOAL := list
.PHONY: list
list:
	@echo "Menu:"
	@echo "git: Deploy"
	@echo "clear-git: Limpar Cache Git"

### Functions

.PHONY: Deploy
git:
	git add .
	git commit -m "..."
	git push origin master

.PHONY: Deleta cache do git
clear-git:
	git rm -rf --cached .