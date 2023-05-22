# README

This is a single-page, reactive note editor with only a single line of custom JavaScript for the flash message animation. You can create, update and delete notes. When clicking on a note, you access the page to create, update and delete dates. On each date, you can add line items. Every time you create, update, or delete a line item, the note total gets updated.

Turbo speeds up Rails applications, reduces the amount of JavaScript we have to write, and makes it easy to work with real-time features. The best part of it is that it's simple to learn.

Generating skeleton of the app:
```
 rails new note-app -T -d postgresql -j esbuild && cd note-app
```

We will run:

* For DB
```
bin/setup
```
* For Server, etc
```
bin/dev
```

###### Note about the bin/setup and the bin/dev scripts:

It is a good practice to have a solid bin/setup script to set up the application for us: install the gems, the JavaScript dependencies, create, migrate and seed the database.

It's almost a must-have when you work in a team, as it should be easy for new developers to set up the development environment. 

Even when working on a small project, using the script has benefits. Every time we need to start from a blank state, we know bin/setup has our back.

The bin/dev script installs foreman locally and runs the application based on the Procfile.dev file. When running the bin/dev command, we are running three commands at once:
```
# Procfile.dev

web: bin/rails server -p 3000
js: yarn build --watch
css: yarn build:css --watch
```
We already know the first command bin/rails server -p 3000 to launch the Rails server. The two other commands yarn build --watch and yarn build:css --watch are defined in the scripts section of the Package.json. They are in charge of precompiling our CSS and JavaScript code before handing them to the asset pipeline. The --watch option is here to ensure the CSS and JavaScript code is compiled every time we save a CSS/Sass or JavaScript file.

Add Tailwind CSS:
```
./bin/bundle add tailwindcss-rails
./bin/bundle add tailwindcss-rails
```

Install Simple Form:
```
gem "simple_form", "~> 5.1.0"
```
```
bundle && bin/rails generate simple_form:install
```
The role of the simple_form gem is to make forms easy to work with. It also helps keep the form designs consistent across the application by making sure we always use the same CSS classes.

