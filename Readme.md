## Pelican build gh pages

The action intend to build the static site of project powered by [Pelican](https://getpelican.com).

### Usage

In your website repository folder: `.github/workflow/main.yml`:

````
on: [push]
jobs:
  - name: checkout
  - name: build the website
  ...

````
