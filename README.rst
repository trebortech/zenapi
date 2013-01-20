
topic
	This project is designed to allow developers an easy way to export API calls into thier system. When provided with an API Spec file in JSON format the script will build supporting application laguage extention to easily integrate into existing applications. This allows the consumer of these tools to concentrate on their application instead of learning what API calls to integrate.

apiBuilder.sh
	Script that will build platform API calls
		Requires a JSON file as the argument

/apidoc
	Directory of JSON files for different API calls

/dist
	Directory for API distributions

Examples

/apidoc/zenoss-api4.json 
	JSON file with specifications of the Zenoss API Version 4.

/dist/zenapi.vbs
	Code to include in vbscript to provide API access to Zenoss

Targeted languages
	Python
	PHP
	JAVA
	Android
	VBScript
	VBA
	PowerShell
