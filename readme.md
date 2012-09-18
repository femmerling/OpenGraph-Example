# Motivation

This repo is an example repo of Open Graph implementation in web applications.
The current example utilized the followings:
* Flask
* Jinja
* werkzeug
* Python2.7
* Google App Engine
* brunch.io

# Setup

clone repository

    git clone https://github.com/femmerling/OpenGraph-Example.git <project_name>

change to directory of <project_name>

    cd <project_name>

fetch all the submodules via

    git submodule update --init

set your own appengine application id in app.yaml

change the 'secret_key' in settings.py by generating a new one

add replace remote

    git remote rm origin
    git remote add origin <new_remote like git@github.com:your_name/project_name.git>
    git commit -am "initial setup"
    git push origin master


