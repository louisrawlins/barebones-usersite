## Setup:

1. Fork this project by clicking the "Fork" button in GitHub
1. Download the source:<br>
  `git clone git@github.com:your-github-id/basic-usersite.git`<br>
  (replace your-github-id)
1. Add the master project as an upstream remote (this is where you'll send pull requests)<br>
  `cd basic-usersite && git remote add upstream git@github.com:appoxy/basic-usersite.git`
1. Make sure everything is up to date:<br>
  `git fetch upstream`
1. Install rvm (see: http://beginrescueend.com/rvm/install/ for more detail)<br>
  `bash < <(curl -s https://rvm.beginrescueend.com/install/rvm )`<br>
1. Install the required Ruby version (ruby 1.9.3-p0)<br>
  `rvm install ruby-1.9.3-p0`<br>
  (For Mac OS X Lion, you may need `rvm install 1.9.3 --with-gcc=clang` per this post http://stackoverflow.com/questions/8032824/cant-install-ruby-under-lion-with-rvm-gcc-issues)
1. Install bundler<br>
  `gem install bundler`
1. Install foreman<br>
  `gem install foreman`
1. Bundle it up<br>
  `bundle`<br>

## Running on localhost:

1. Start app: `foreman start`
1. Load app in browser: `localhost:5000`<br>
  (More info is here http://michaelvanrooijen.com/articles/2011/06/08-managing-and-monitoring-your-ruby-application-with-foreman-and-upstart/)
    
## Make all users admins:

1. Open console in project directory

    `% sqlite3 basic-usersite.sqlite3`<br>
    SQLite version 3.7.7 2011-11-11 12:34:56<br>
    Enter ".help" for instructions<br>
    Enter SQL statements terminated with a ";"<br>
    sqlite> `update users set usertype='admin';`<br>
    sqlite> `.quit`
