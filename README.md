# vtstuff

It appears that you cannot batch search MD5s in VirusTotal without use of the API, so I created a script to do it adhering to the free API's request limit (4 per minute).  I also found out that the resulting JSON is non-compliant, which causes issues when using it with jq.  The file process.sh will clean things up and then print out all results from VT that have a detection ration of greater than 0.
