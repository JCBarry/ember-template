# Ember.js Template

### Overview
Ember-template aims to help developers create [Ember.js](http://emberjs.com) applications with a modular approach.  At the same time, compiling the application down to simply to static assets, an application.js file and an application.css file.

This repo contains all the code necessary to develop your application and perform the compilation procedure.

By default it ships with the [Ember.js Todos](http) application already running.

### Usage
Clone the repository and enter the ember-template directory.  **You'll need Ruby and Bundler.**

	bundle install
	bundle exec rackup

You will now have a server running at `http://127.0.0.1:9292`.  To access your Ember.js application go to:

http://127.0.0.1/index.html

### Building your Ember.js application
Your Ember.js application should be built inside the ember-skeleton folder.  Use the following file/folder explanations as a guide:

	ember-skeleton
	 |-	controllers -- Ember.js controllers
	 |-	models		-- Ember.js models
	 |-	static 		-- Any static assets (images, media) associated with your application
	 |-	stylesheets	-- Either CSS or SASS files for your application
	 |-	templates	-- Ember.js templates

On each page refresh, the rake-pipeline Rack middleware will compile the application into `public/application`.

### Bootstrapping your application
In order to load the main controller of your application you must append that controller's view to the page.

You can do this using the `appendTo` method built into Ember.js, like so:

	var MainView = Ember.View.create({
	  templateName: 'main_view'
	}).appendTo('#ember-skeleton');


### Todo
* Add Coffeescript support to the Assetfile
* Hopefully track the rake-pipeline gem against rubygems instead of the git repo