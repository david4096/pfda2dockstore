# pfda2dockstore

Export precisionFDA apps to Dockstore

This application takes apps by name from your Precision FDA account and makes them available by
creating a Github repo, CWL workflow, and Docker image and activates it on Docker hub. This then
makes the workflow available to Dockstore, which manages workflows using the GA4GH Task Registry API.


## Using the script

For example, to export [vcf-comparison](https://precision.fda.gov/apps/app-BqB9XZ8006ZZ2g5KzGXP3fpq) and save it in Github at [pfda2dockstore](https://github.com/pfda2dockstore) and DockerHub organization [pfda2dockstore](https://hub.docker.com/u/pfda2dockstore):

    conda create -n pfda python=3.5 anaconda
    source activate pfda
    pip install -r requirements.txt
    # alternatively, you can call run.sh or the two commands below
    docker login
    python pfda2dockstore -p $PFDA_TOKEN --github-token $GITHUB_TOKEN --github-org pfda2dockstore --app-name vcf-comparison

Using a virtual environment:

    virtualenv env -p /usr/bin/python3
    source env/bin/activate
    pip install -r requirements.txt
    docker login
    python pfda2dockstore -p $PFDA_TOKEN --github-token $GITHUB_TOKEN --github-org pfda2dockstore --app-name vcf-comparison

## Using the run script

A script `run.sh` is available that makes it possible to easily enter in your configuration variables.

Simply execute `sh run.sh` and follow the prompts.

## Future Work

* Export other workflow types
* Simple testing (what can be unit tested)
* Integration tests

## Contributing

Please join [the issues](https://github.com/OpenGenomics/pfda2dockstore/issues])!
