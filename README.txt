rubington
    by Thomas Gallaway
    http://www.atomlab.us/projects/rubington

== DESCRIPTION:

The idea is to add dc & surrounding areas (VA&MD) services into a gem.

== FEATURES/PROBLEMS:

* CitizenAtlas is currently working
* Need to put some filter's in place to get less crap. XML is so ugly.
* Need to write tests!

== SYNOPSIS:

  require 'rubington'
  Rubington::CitizenAtlas.verify_dc_address_throu_string("1650 Harvard St")

== REQUIREMENTS:

* httparty

== INSTALL:

* gem sources -a http://gems.github.com
* sudo gem install atomist-rubington

== LICENSE:

(The MIT License)

Copyright (c) 2009 Thomas Gallaway

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
