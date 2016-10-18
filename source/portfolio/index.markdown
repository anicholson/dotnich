---
layout: page
title: "Portfolio"
date: 2016-10-18 16:00
comments: false
sharing: true
footer: true
---
# Portfolio &amp; Projects

Here's a selection of things I have either built or am building - whether software or not!

## Hangman <i class='icon-elm'></i>

I wanted to learn to write code in Elm, so I made a small game!

<img src="/images/hangman.jpg">

* [Play hangman][hangman-game]
* [Code on Github][hangman-code]

## Barnabas <i class='icon-crystal'></i>

Like many developers, I spend a lot of time in front of my laptop, and a bunch of _that_ time in a Terminal.
This app prompts users to send a message to a friend when they open a new terminal, and sends that message
using OSX's Messages.app.

To install:

```
brew tap andrewdotnich/andrewdotnich

brew update

brew install barnabas
```

[Code on Github][barnabas-code]

## Pain <i class='icon-ruby'></i>

I read Daniel Cook's article "[Improving Bug Triage with User Pain][pain]", and found it very helpful.
I decided to knock up a quick CLI tool that I could use to score bugs for my projects quickly and simply :)

<img src="/images/pain.png">

[Code on Github][3]

## GS1net Code List Editor <i class='icon-javascript'></i>
GS1 is a non-profit organisation that looks after retail product information. They have lots of code lists describing various attributes a product may have. These are fiddly to edit, so I created this little app to make life easier for the BAs on my product team :)

<img src="/images/gs1_code_editor.png">

[Go to site][4]

## Mining Depot <i class='icon-ruby'></i>

Ever since auditing a subject on concurrency at University, I've wanted to build something that was threaded from the ground up. Since most of my work right now is Web-based, I don't get many opportunities to learn about threading! So I'm building this to learn how to build portable, thread-safe &amp; highly-concurrent code in Ruby.

[Code on Github][1]

## Mining Frontends <i class='icon-ruby'></i> <i class='icon-javascript'></i>

The next logical step for the Mining Depot project. Given a portable Ruby application that isn't tied to a hosting or distribution model, how many different frontends can I build for the exact same application?

Ideas for frontends:

* Command-line, curses-style
* 2D graphics with gosu
* browser client with API calls

[Code on Github][2]


[1]: http://github.com/anicholson/mining_depot
[2]: http://github.com/anicholson/mining_frontends
[3]: http://github.com/anicholson/pain
[4]: http://gs1net-codelist-editor.herokuapp.com/
[pain]: http://www.lostgarden.com/2008/05/improving-bug-triage-with-user-pain.html
[barnabas-code]: http://github.com/anicholson/barnabas
[hangman-code]: http://github.com/anicholson/elm-hangman
[hangman-game]: http://hangman.dotni.ch/