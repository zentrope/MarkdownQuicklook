# Markdown Quicklook Plugin

![](https://media2.popsugar-assets.com/files/thumbor/oKnc8lURrJEabkVQ1rQxnHVKrmg/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/10/06/627/n/1922398/2424da60_2308713996_e975754668_o.jpg)

This is my own personal plugin for Quicklook for viewing Markdown text files. It doesn't add anything beyond what other versions do. My version, though, is just the way I like it and easy (for me) to change.


## Install

Download the latest zipped version from the [releases][rel] page.

Unzip the archive:

    $ unzip MarkdownQuicklook-1.0-1.zip

Create the Quicklook directory, if it doesn't already exist:

    $ mkdir -p ~/Library/Quicklook

Copy the Quicklook plugin to the installation directory:

    $ cp -r MarkdownQuicklook.qlgenerator ~/Library/Quicklook

Register the library with the system:

    $ qlmanage -r

Find a Markdown file (ending in `.md` or `.markdown`) in Finder, select it, press spacebar. Hopefully you'll see a Github-like rendering of the file.

## Features

- Renders Markdown files using Github's readme.md file style sheets
- Automatically highlights code blocks

## What's missing

- Doesn't provide thumbnails
- Doesn't detect if a file ending in `.txt` is actually a Markdown file
- Doesn't properly render images using relative URLs
- Doesn't allow you to swap out the CSS stylesheet if you want something different

## Releases

* [https://github.com/zentrope/MarkdownQuicklook/releases][rel]

[rel]: https://github.com/zentrope/MarkdownQuicklook/releases

## License

Copyright (c) 2019-present Keith Irwin

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see
[http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

