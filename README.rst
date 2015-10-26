=======================
Jenkins buildout readme
=======================

This buildout is used to make jenkins jobs for IMIO Plone dev

This buildout use the recipe https://github.com/plone/plone.recipe.codeanalysis and add a coverage for Jenkins.

Docs
====
For using it, create a jenkins.cfg file into your development products::

    [buildout]
    extends =
        buildout.cfg
        https://raw.githubusercontent.com/IMIO/buildout.jenkins/master/qa.cfg


    [code-analysis]
    directory = src
    jenkins = True

