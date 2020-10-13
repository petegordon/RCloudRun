# RCloudRun
Show the use of Google Cloud Run with R/Plumber in Docker.

Thanks to https://medium.com/tmobile-tech/using-docker-to-deploy-an-r-plumber-api-863ccf91516d

This example shows using Docker, R, Plumber with Google Cloud Run.

Start with a standard Google Cloud Run example. I recommend the Python example. This will ensure that you have the Cloud SDK installed and are able to use it. 

Follow the instructions here...
https://cloud.google.com/run/docs/quickstarts/build-and-deploy

Then proceed to Deploy this R/Plumber Cloud Run instance.

```
gcloud builds submit --tag gcr.io/<Google Cloud Platform Project>/rcloudrun_plumber
```

```
gcloud run deploy --image gcr.io/<Google Cloud Platform Project>/rcloudrun_plumber --platform managed
```
