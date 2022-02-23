PROJECT_PURPOSE = creating a github repository and uploading files
FOLDER_NAME = C:\Users\User\Documents\PROGRAMMING\FLASK-DOCKER\UDEMY\rest-api-sections\Donald_Rest_API
USER_NAME = donald-besong
EMAIL = donald.besong.principles@gmail.com
NAME = Donald O. Besong
MESSAGE = "Adding files ..."
GITHUB_REPO = https://github.com/Donald-Besong/Donald_Rest_API 
LOCAL_GIT = .git
FILE_TO_AMEND = .\myapp\main.py
how_to_use: 
	make -f makefile.mak add_files
	
make_env:
	@echo "creating and activateing env3"
	python3 -m venv env3 --copies
	@echo $(PWD)
	python3 extra_code.py
	@echo "Hello again"
	
make_env2:
	pip3 install -r requirements.txt	
	
build0:	clean_up

build_all:	clean_up initialise add_files configure commit_files add_location upload

clean_up:
ifeq (,$(wildcard .\$(LOCAL_GIT)))
	@echo "no such file. Creating..." 
else
	@echo "file exists. Deleting..., Creating..."
	rd /s /q .\$(LOCAL_GIT) 
endif

xtest:	
	@echo "I am just testing...$(GITHUB_REPO)" 

initialise:
	@echo ... initialising
	@echo type "dir /a:d" to show all directories or "dir /a:h" to show hidden directories and files
	git init

add_files:
	@echo type "git add file_name" to add a specific file
	git add .
	
configure:
	@echo conf... 	
	git config --global user.name $(USER_NAME)
	git config --global user.email $(EMAIL)
	
commit_files:
	git commit -m $(MESSAGE) 
	
add_location:
	git remote add origin $(GITHUB_REPO)
	
push_origin_master:
	git push origin master --force
	
update0:
	git checkout amend_main1
	@echo do "git fetch origin" if necessary
	git add Glue_job_to_dynamodb.py
	git commit -m "added the amended Glue_job_to_dynamodb.py"
	git push origin amend_main1
