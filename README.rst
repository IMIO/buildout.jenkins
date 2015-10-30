=======================
Jenkins buildout readme
=======================

This buildout is used to make jenkins jobs for IMIO Plone dev

This buildout use the recipe https://github.com/plone/plone.recipe.codeanalysis and add a coverage for Jenkins.

Docs
====
For using it, you have to add this section in your buildout like this::

    [buildout]
    extends =
        ...
        https://raw.githubusercontent.com/IMIO/buildout.jenkins/master/qa.cfg

    [code-analysis]
    directory = ${buildout:directory}/other-folder-than-src

[code-analysis] section is optional. By default, code-analysis will check coding style error into src directory.



For using it into a jenkins job, you have create a jenkins.cfg file into your development products::

    [buildout]
    extends =
        buildout.cfg

    [code-analysis]
    jenkins = True


docker build -t cpskin-test:latest .

docker run -e 'REPO=https://github.com/IMIO/cpskin.slider.git' cpskin-test:latest
