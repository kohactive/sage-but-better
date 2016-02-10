#<Project Name> WordPress

<description>

##Project Initialization
1. Move files in `deploy-assets/` to the root of the WordPress install
2. Move plugins in `plugins/` to `wp-content/plugins`
3. Delete empty `deploy-assets/` & `plugins/`
4. Remove this section from this readme

##Environment Setup
1. Create local database: `wp_<project_name>`
2. "Save as" `.env.php.sample` to `.env.php`
3. Change variables to match your setup

##Installation
1. `git clone git@github.com:kohactive/<project-name>.git`
2. Navigate your browser to the local site: http://localhost/mk-films
3. Follow the WordPress install instructions
4. Activate Migrate DB Pro(license key is in 1password)
5. Pull from staging(connection string below)
6. `cd /path/to/mk-films`
7. If you don't have the Gulp cli installed: `sudo npm install gulp-cli -g`
8. `./install.sh`

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

Connection string:
```
<staging wp admin connection string>
```

##Base Theme
[Sage docs](https://github.com/roots/sage)
