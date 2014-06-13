=======================
Jenkins buildout readme
=======================

This buildout is used to make buildout jobs for Plone dev

This buildout was inspire by https://github.com/plone/buildout.jenkins and use the recipe https://github.com/plone/plone.recipe.codeanalysis

Docs
====
For using it, create a jenkins.cfg file into your development products::

    [buildout]
    extends =
        buildout.cfg
        https://raw.githubusercontent.com/IMIO/buildout.jenkins/master/jenkins.cfg

    source-directory = ${buildout:directory}/src
        


