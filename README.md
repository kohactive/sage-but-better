#<Project Name> WordPress

<description>

##Environment Setup
1. Copy `.env.php.sample`
2. Rename to `.env.php`
3. Change variables to match your setup
4. Move files in `deploy-assets/` to the root of the WordPress install
5. Delete empty `deploy-assets/` directory

##Installation
1. sudo npm install gulp-cli -g
2. `./install.sh`

##Development
`./development.sh`  
To watch for changes:  
`./watch.sh`

##Staging
[<url>.herokuapp.com](http://<url>.herokuapp.com)

##Database
[Migrate DB Pro](https://deliciousbrains.com/wp-migrate-db-pro/)
* set up local dev install to **pull** staging db
* **DO NOT PUSH TO STAGING. MAKE DB EDITS ON STAGING & PULL.**

##Base Theme
[Sage docs](https://github.com/roots/sage)
