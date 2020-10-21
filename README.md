## About

What u should do if u was started rails server and open localhost:
1. Run $rails db:seed and authorize as user with this params:
email: user@gmail.com, password: password
2. At second tab authorize as admin with this params:
email: admin@gmail.com, password: password.
3. As user u can only create and edit advertisement
when it has state draft and add advertisement.
4. As admin u can approve or cancel after publish or
approved advertisement will auto published at 12:00 am.
5. Only published advertisements show on home page.

## Stack

* Ruby 2.7.0
* Rails 6.0.3
* Sqlite

## Gems

* devise
* rspec
* bootstrap
* action-text
* kaminari
