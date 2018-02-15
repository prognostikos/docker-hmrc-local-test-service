A Docker image for HMRC's [Local Test Service
(LTS)](https://www.gov.uk/government/publications/local-test-service-and-lts-update-manager)

This image configures the LTS to use the taxation/chartities/r68/2 service. If
you want to add additional services you can add the RIM artefacts for the
service to the RIMArtefacts directory and modify the validatorConfig.xml that is
used to configure the LTS.

To change the LTS version, edit the LTS_URL environment variable in the
Dockerfile

## build the image
`docker build . -t hmrc-lts:latest`

## run the image, exposing the LTS port
`docker run --rm -it -p "5665:5665" --name hmrc-lts hmrc-lts:latest`

The LTS is now running at http://localhost:5665/LTS

## poke around in the running container
`docker exec -it hmrc-lts /bin/bash`

