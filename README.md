# What is this

It's the second [Basilica](https://github.com/ianthehenry/basilica) client!

# For hacking

    $ brew install node

> I also recommend `brew install terminal-notifier`, but it's not strictly required.

Afterwards, run this command once (and again whenever dependencies change):

    $ bin/deps

Start the CoffeeScript watcher/recompiler:

    $ bin/watch

And in a different tab (as these both spawn long-running processes), start the stylus recompiler and static file server:

    $ bin/brunch

**Important**: if you change dependencies, you should edit `bin/deps` and `bin/watch` with the appropriate module names. I don't know how to make that automatic yet.

# Structure

There are three script files in development mode:

- `vendor.js` stores all dependencies, and must be manually rebuilt by `bin/deps`.
- `app.js` stores all application code, and is automatically rebuilt by `bin/watch`
- `debug.js` is created by `bin/brunch`, and is responsible for automatically reloading the page and inserting updated CSS.

Production mode omits `debug.js`, but keeps the `vendor.js`/`app.js` divide for cache-friendliness.
