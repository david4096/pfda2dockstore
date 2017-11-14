# pfda2dockstore

Export precisionFDA apps to Dockstore

Be sure to set these variables in your environment:

* PFDA_TOKEN
* GITHUB_TOKEN

## Main Script - pfda2dockstore

For example, to export [vcf-comparison](https://precision.fda.gov/apps/app-BqB9XZ8006ZZ2g5KzGXP3fpq) and save it in Github at [pfda2dockstore](https://github.com/pfda2dockstore) and DockerHub organization [pfda2dockstore](https://hub.docker.com/u/pfda2dockstore):

    conda create -n pfda python=3.5 anaconda
    source activate pfda
    pip install PyGithub agithub
    # alternatively, you can call run.sh or the two commands below
    docker login 
    python pfda2dockstore -p $PRECISION_FDA_TOKEN --github-token $GITHUB_TOKEN --github-org pfda2dockstore --quay-token $QUAY_TOKEN --quay-org $QUAY_ORG --app-name vcf-comparison

The `QUAY_TOKEN` now seems replaced by robots in Quay.io

## Accessory Script - GitHub Repo Creation

This script (`createrepo.py`) takes your Github token and an organization name and creates a repository in it with a given CWL and Dockerfile.  I had to use two libraries here because PyGithub has a bug when creating a release.

    pip install PyGithub agithub

    python createrepo.py --token $GITHUB_TOKEN --org pfda2dockstore --tool test5 --tag 1.0.0

This will create a test5 repo in Github under the pfda2dockstore organization.

----


Inputs: Github Token, Quay.io token, reponame, list of files
