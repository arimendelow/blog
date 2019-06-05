# BLOG

A blog, built using Ruby on Rails.

## Explanation of the contained files/folders:
| File/Folder | Purpose                                                                                                  |
|-------------|----------------------------------------------------------------------------------------------------------|
| app/        | Contains the controllers, models, views, helpers, mailers, channels, jobs and assets for our application.|
| bin/        | Contains the rails script that starts our app. Can also contain other scripts that we use to setup, update, deploy, or run our application.|
| config/     | Configure our application's routes, database, etc. |
| config.ru   | Rack configuration for Rack based servers used to start the application. See the (Rack website)[https://rack.github.io] for more info.|
| db/         | Contains our current database schema, as well as the db migrations.|
| Gemfile Gemfile.lock | These allow us to specify what gem dependencies are needed for our Rails app. They're used by the Bundler gem. For more info, (see here)[https://bundler.io/].|
| lib/        | Extended modules for our application.|
| log/        | Application log files|
| package.json| Allows us to specify what npm dependencies are needed for our Rails app. Used by Yarn.|
| public/     | Only folder seen by the world as-is. Contains static files and compiled assets.|
| Rakefile    | Locates and loads  tasks that can be run from the CL. Task definitions are defined throughout our Rals components. Add our own tasks by adding files to the `lib/tasks` directory.|
| README.md   | This file! :)|
| test/       | Unit tests, fixtures, other test apparatus.|
| tmp/        | Cache, pid files, etc.|
| vendor/     | A place for all 3rd-party code. Vendored gems, mostly.|


## Todo:
```
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
```
