
git_pull: git_install docker_running
		git checkout master

docker_running: 
		docker --version

git_install: 
		git --version

