BDD Automation Test Framework for iOS supporting Appium , Cucumber, Ruby

## 1.0 Prerequisites
* You're using a MAC. Essential for iOS testing.
* Xcode installed
* JAVA 8 JDK


## 2.0 Setup your environment
Note: This assumes you're starting from scratch on a new MAC. Steps may/may not be required or may need to be altered if you already have a development environment set up.

### 2.1 Install brew

    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor

### 2.2 Install ruby 2.6.3
Note: You can install ruby 2.6.3 however you like, as long as that is the version of ruby that is used when running the tests. One of the most common methods is to use RVM, however the method shown here works just as well.

    brew install chruby
    brew install ruby-build
    ruby-build 2.6.3 ~/.rubies/2.6.3

### 2.3 Set up your bash_profile
Make sure you're in your Home directory

    cd ~

Create your bash profile (unnecessary step if you already have one, check first by running `ls -lA`)

    touch .bash_profile

Open the bash profile

    open .bash_profile

Add the following to your bash profile. This will set your terminal to use Ruby 2.6.3 by default.

    source /usr/local/opt/chruby/share/chruby/chruby.sh
    source /usr/local/opt/chruby/share/chruby/auto.sh
    chruby 2.6.3


Save the file, then completely kill then re-open the Terminal.

Check that the default version is 2.6.3

    ruby -v
### 2.4 Set up your PATH
Open your PATH

    sudo pico /etc/paths


### 2.5 Install appium
This will install the command line version of appium. If you want, you can download the GUI version from the appium website (comes in very useful for getting XPATH of elements from iOS apps).
At the time of writing, the framework and dependencies work with Appium version 1.4.0

    brew install node
    npm install -g appium@1.5.0
    npm install wd

### 2.6 The project and dependencies
Setup your ssh keys: https://help.github.com/articles/generating-ssh-keys/

Clone the framework

    git clone https://github.com/reddynalla9/appium_ios.git

Navigate to the framework directoy

    cd atlas-mobile-auto

Install bundler and the gems the framework is dependent on

    gem install bundler
    rake dependencies

### 2.7 Potential setup problems
* Nokogiri - if during the 'bundle install' step in section 2.6, you encounter a problem with xcode and Nokogiri, run the following command `xcode-select --install`

* iOS Simulator - if the simulator asks for your password every time you run a test, run the following command `DevToolsSecurity —enable`



## 3.0 Running tests
Prerequisites:
* Build should be in the directory root, xxx-APP.zip

Tests can be run using the command

bundle exec cucumber -p default --tags @ios
Those tags were specified in cucumber.yml
Platform capabilities like version name,platform,app path  were passed in helper.rb

