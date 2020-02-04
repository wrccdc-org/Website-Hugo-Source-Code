# WRCCDC Main Website Source Code
This is the source code for the wrccdc.org site. Compile it with Hugo v0.58.3 or better. Want to help out with the website? Here are the steps to get started.

The website is built with Hugo. Hugo is a static site generator, similar to Jekyll. It is written in GO and it is awesome. Simply install it into your distro of choice to get started. The site was initially built using Mac OSX.

## Installation
### Mac OSX Install w/ Brew.
`brew install hugo`

### Apt based Distros
`$ sudo apt-get install hugo`

## Setup Instructions
1. To get started as fast as possible, install and use Github Desktop. Since the WRCCDC org account is associated with your personal account, it makes pushing new edits to the site a breeze. You don't have to use it but if you want to use the command line instead, then you'll have to manually configure git to push over to the org repo and that can get complicated.
2. Clone both repos. This one and the https://github.com/wrccdc-org/wrccdc-org.github.io repo. This repo contains the source code; the other repo contains the compiled website code.
3. Edit `deploy.sh` and change the variable on top to the directory location on your computer of where the wrccdc-org.github.io repo is.
4. Use a text editor to make website changes then save your changes. SEE BELOW FOR FURTHER DETAILS ON THIS.
5. It is a good idea to see your changes locally. Run `server.sh` or `hugo server -D -E -F` to start the Hugo Server. Then in a web browser, go to `http://127.0.0.1:1313/`. You'll see the website live, literally the same way as it will appear online.
6. Once you are happy with the changes, run deploy.sh. All it will do is compile the site, then take the compiled website code from Hugo, **now under the public directory**, and move it over to the repo of where the site will be hosted from.
7. Add a commit change message then commit and push! Don't forget to push both repos so other people working on the site can also get your updated changes.

## Working with Hugo.
The awesome part of using Hugo to make websites is that it uses Markdown. Hugo takes your markdown, then compiles it down to HTML. If you use the website like a blog, then the end result is that you won't have any dynamic content on your site, making it more secure to web attacks. See Below for a quick Markdown Primer.

### Important Files & Folder Locations
* The `/content` directory is where the markdown lives. Here is where you make website changes.
* The `/public` directory is where the compiled/finished website is. Literally the finished HTML/CSS/JAVASCRIPT code. You don't touch/edit anything in here.
* The `/static` directory is where your images, documents (pdfs, word docs, etc..), and custom CSS files live under. You don't reference the folder itself, only everything underneath. For example, if your adding a picture to the blog, then you would code it in your markdown like so: `![Some Cool Picture](/images/cool-picture.png)`. Same goes if you're adding a PDF file: `[Important Doc](/docs/important-pdf-file.pdf)`
* What if I want to edit the HTML itself? Well. Take the twitter feed for example. Hugo compiles everything from the content directory and spits it out to the public directory. If you wanted to change the actual code for the index page, like adding the Twitter Feed, then you would go into the `/themes/` directory, then for the theme itself `/themes/ananke`, edit the index source file under `/themes/ananke/layouts/index.html`. In there, towards the bottom, is where the code was added to make the twitter feed appear. This had to be done to add the Logo next to the page header.
* The `/archetypes` directory is basically the template for new markdown pages. You reall won't have to edit it.

## Markdown Primer

### Lists

### Tables

### Bold Text

### Italized Text

### Links
#### Internal
#### External

### Images.
