# Bookmark challenge

You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## Set up

### Set up database

Connect to `psql` and create the `bookmark_manager` database:

```sql
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## Functionality

- [x] Show a list of bookmarks
- [x] Add new bookmarks
- [ ] Delete bookmarks
- [ ] Update bookmarks
- [ ] Comment on bookmarks
- [ ] Tag bookmarks into categories
- [ ] Filter bookmarks by tag
- [ ] Users are restricted to manage only their own bookmarks

## Approach

We broke the specifications down into User stories and looked to implement each one before moving onto the next

### User stories covered

```sh
As a user
So that I can see that I have no bookmarks
I want to open my bookmark manager and see that it is empty

As a user
So that I can see my bookmarks
I want to open my bookmark manager and see a list of bookmarks

As a user
so that I don't lose my bookmarks
I want to be able to add a bookmark and see it on the list
```

Domain model:

![Domain model](/imgs/bookmark_domain_model.png)
