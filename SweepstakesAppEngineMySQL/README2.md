proxy needs to run to connect ti gcp cloud sql
currently using whitelisted ip]may change

proxy details
https://cloud.google.com/dotnet/docs/getting-started/using-cloud-sql

Kubernetes?

can i run a standard compute engine with iis and db on the sam box?

cloud sql for .net app engine
https://cloud.google.com/appengine/docs/flexible/dotnet/using-cloud-sql

ASP.Net Ttorial
https://app.pluralsight.com/player?author=scott-allen&name=aspdotnet-mvc5-fundamentals-m1-introduction&mode=live&clip=1&course=aspdotnet-mvc5-fundamentals

Sweepstakes Linux for migration template


MY SQL
For MySQl Migrations, you need to use Pomelo ENtityframeworkCore MySql instead of Oracle as the defauls uses massive PK's

GCP App Engine
App Engine needs the App Engine Admin API to allow publishing from VS

Connection strings

	

CLoud SQL Proxy
THis must be run to access GCP sql db
file located @ C:\Users\Phil\Documents\GCP

Run with
cloud_sql_proxy -instances=sweepstakes-mysql:us-east4:sweepstakes-db=tcp:3306
// you may need to change the tcp socket if you're using 3306 for a local mysql instance
you may need to change project with:
gcloud config set project my-project

{
	Antiforgery issues in app engine
	using Google.Cloud.AspNetCore.DataProtection.Kms;
	using Google.Cloud.AspNetCore.DataProtection.Storage;
	https://medium.com/google-cloud/antiforgery-tokens-asp-net-core-and-google-cloud-7ac6a5c7842b
	https://cloud.google.com/appengine/docs/flexible/dotnet/application-security
	
	// NB: Remove quotes from global in one of the lines
	
	Still in alpha, use other solution from same post
	https://medium.com/google-cloud/adding-social-login-to-your-asp-net-core-2-1-google-cloud-platform-application-1baae89f1dc8
}

Temp whitelist ip for db access
gcloud sql connect sweepstakes-db
NOTE: Test if only whitelist needed or if connection needed too?


Try with next level db, if it works, publish test and then shut down


Delete project withough removing domain names?
https://stackoverflow.com/questions/46345759/error-domain-is-already-mapped-to-a-project-in-google-cloud-platform/49313083#49313083

OPenssl cmd
.\openssl-0.9.8k_X64\bin\openssl pkcs12 -export -in client-cert.pem -inkey client-key.pem -certfile server-ca.pem -out client.pfx

Encrypt appsettings.secrets
.\Encrypt-AppSecrets.ps1 
// decrypr too...