# eSearch

how to run this app:

Download books if needed - gitBash
./setup/download_data.sh
 -- The books folder is created in the setup folder.
 -- Delete all files that are 1KB - these are ones with errors
 -- Move this folder to ./esearch. load_data.js expects it there.
 
DOS command prompt:
elasticsearch-6.1.3\bin\elasticsearch.bat

Load Data from esearch folder: (this will load index for the books folder)
node server/load_data.js

Git Bash:
npm start in esearch


Git bash:
in esearch folder: http-server