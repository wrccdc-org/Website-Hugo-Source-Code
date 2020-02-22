# WRCCDC Main Website Source Code
This is the source code for the wrccdc.org site. It has been compiled with Hugo v0.65.2. Want to help out with the website? Here are the steps to get started.

The website is built with Hugo. Hugo is a static site generator, similar to Jekyll. It is written in GO and it is awesome. Simply install it into your distro of choice to get started. The site was initially built using Mac OSX.

__Note:__ Make sure you use hugo version v0.60.0 or better. The reason is that as of this version and above, hugo now uses [this markdown engine](https://github.com/yuin/goldmark/) and older versions won't render properly with our code. At the time of this writing, the version we are currently using to compile the site is v0.65.2.

## Installation
### Mac OSX Install w/ Brew.
`brew install hugo`

### Apt based Distros
`$ sudo apt-get install hugo`

## Setup Instructions
1. To get started as fast as possible, install and use Github Desktop. Since the WRCCDC org account is associated with your personal account, it makes pushing new edits to the site a breeze. You don't have to use it but if you want to use the command line instead, then you'll have to manually configure git to push over to the org repo and that can get complicated.
2. Clone both repos. This one and the https://github.com/wrccdc-org/wrccdc.org repo. This repo contains the source code; the other repo contains the compiled website code.
3. Edit `deploy.sh` and change the variable on top to the directory location on your computer of where the wrccdc.org repo is.
4. Use a text editor to make website changes then save your changes. SEE BELOW FOR FURTHER DETAILS ON THIS.
5. It is a good idea to see your changes locally. Run `server.sh` or `hugo server -D -E -F` to start the Hugo Server. Then in a web browser, go to `http://127.0.0.1:1313/`. You'll see the website live, literally the same way as it will appear online.
6. Once you are happy with the changes, run deploy.sh. All it will do is compile the site, then take the compiled website code from Hugo, **now under the public directory**, and move it over to the repo of where the site will be hosted from. Make sure the pages are not in draft mode, or else they won't compile.
7. Add a commit change message then commit and push! Don't forget to push both repos so other people working on the site can also get your updated changes.

## Working with Hugo.
The awesome part of using Hugo to make websites is that it uses Markdown. Hugo takes your markdown, then compiles it down to HTML. If you use the website like a blog, then the end result is that you won't have any dynamic content on your site, making it more secure to web attacks. See Below for a quick Markdown Primer.

### Important Files & Folder Locations
* The `/content` directory is where the markdown lives. Here is where you make website changes.
* The `/public` directory is where the compiled/finished website is. Literally the finished HTML/CSS/JAVASCRIPT code. You don't touch/edit anything in here.
* The `/static` directory is where your images, documents (pdfs, word docs, etc..), and custom CSS files live under. You don't reference the folder itself, only everything underneath. For example, if your adding a picture to the blog, then you would code it in your markdown like so: `![Some Cool Picture](/images/cool-picture.png)`. Same goes if you're adding a PDF file: `[Important Doc](/docs/important-pdf-file.pdf)`
* What if I want to edit the HTML itself? Well. Take the twitter feed for example. Hugo compiles everything from the content directory and spits it out to the public directory. If you wanted to change the actual code for the index page, like adding the Twitter Feed, then you would go into the `/themes/` directory, then for the theme itself `/themes/ananke`, edit the index source file under `/themes/ananke/layouts/index.html`. In there, towards the bottom, is where the code was added to make the twitter feed appear. This had to be done to add the Logo next to the page header. You rarely have to do this but its written here for documentation purposes.
* The `/archetypes` directory is basically the template for new markdown pages. You really won't have to edit it.
* `config.toml` - This is the main configuration file for the site.

### How do I add a new page?
Easy! In the command line, type `hugo new FOLDER/NEW-PAGE.md` where FOLDER is either `about`, `posts`, `participants`, `support`, or `compete`, basically the subfolders from the content directory, and where NEW-PAGE.md is the filename of your new page.

### New page was added. Now what?
At the top of your new page, you'll see:
```
---
title: "Competition Format"
date: 2020-01-25T13:44:41-08:00
draft: false
---
```
This is the header information that Hugo uses to see if your page is a draft, what time the page/post was created and the title of your new page. There are other *optional* things you can add, and those are listed below. You can start creating your new page by adding your markdown below the three lines `---`.

#### Page Header Options
These are the page header options you can add.
* `toc: true` - This adds a table of contents to the side of the page.
* `draft: false` - Sets the page to be in draft mode. If true, it won't be published/compiled until it has be set to false.
* `featured_image: '/images/about.jpg'` - Adds a picture to the header of the page.
* `omit_header_text: true` - Removes header text from the top of the page.
* `description: Thank you..` - The header text that gets added to the top of the page.
* `type: page` and `menu: main` - This one marks the post as its own page and adds it to the index page. You most likely won't be using it but its here for documentation purposes.
* `PublishDate: false` - Removes the post publish date from the page.

#### Post Special Attributes

`<!--more-->` - When you create a new post, the links to the post automatically get generated, along with a blurb of the post. The problem is, the page doesn't know when the blurb ends so if you were to write a LONG paragraph, then the preview for the post will grow in size. This trims the preview and ends it a where you put this tag. For example, if you look at the link for the history of CCDC located under the about section, you'll see that the blurb starts at "A group of educators...." and ends with "...level students." This more tag was placed right after the word students to prevent this preview/link from growing in size.

## Markdown Primer
New to Markdown? No problem!
### Lists
#### Unordered List
To make an unordered list, add an * then a space followed by whatever you want to make into the list. Add a tab in the beginning to make it a sub item.
```
* one.
* two.
* three.
  * sub-item 1
  * sub-item 2
    * sub-sub-item 1
```
#### Unordered List
Ordered lists use numbers instead:
```
1. Blah.
2. Two Blah.
3. Three Blah.
```
### Tables
```
| Table Header 1 | Table Header 2 |
| ---- | ---- |
| First Item | Blah |
| Second Item | Blah |
```

To make a table left, center, or right indented, use `:`
```
| Table Header 1 | Table Header 2 | Table Header 3 |
| :---- | :----: | ----: |
| Left Indented | Centered Text | Right Indented |
```
### Bold Text
Add two underscores on each side.
```
__blah__
```
### Italized Text
Add one underscore on each side.
```
_blah_
```
### Links
#### External
```
[Something Online](http://example.com/something/file.html)
```
#### Internal
Don't forget to remove the .md and instead of referencing a file, reference it like a folder.
For example, if we are referencing another page, located under `participants/2020-Participants.md`, do the following:
```
[2020 Regional Finalists](/participants/2020-teams/)
```
### Images.
Same as internal links but they use a ! at the beginning and the pictures are located under `/static/images/pic.jpg`. As mentioned before, don't reference the `/static` folder itself:
```
![Some Cool Picture](/images/pic.jpg)
```
