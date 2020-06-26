# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Builder Now backend

## Table of contents

* Dependencies
* Set up
* Contributing
* User verification

## Dependencies

* Ruby 2.6.3
* Rails 5.1.1
* Database: Sqlite3

## Set up.

* Install sql server

* Clone the repo.
```
https://github.com/D-KOD3R/SecureUploads.git
```    

* Install dependencies
```
cd SecureUpload
bundle install
```


* Setup database.
```
rails db:setup
```

* User verification
```
rails console
User.find_by(email: "/some email/").update(is_verified: true)
```

## Contributing

In order to contribute, developer should follow following guidelines.
* Take fresh pull from *master* branch.
* Create a new branch with naming convention as:
* fix/<fix_name> for a bug
* chore/<chore_name> for a chore
* feature/<feature_name> for new feature
* Update your branches daily with *master* to prevent merge conflicts




