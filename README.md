# Confluence space to github markdown pages
Convert a confluence space export in XML format to github markdown pages

You can run this script multiple times on your exported files: it deletes .md files in the output directory before creatting them.

## To export a space from confluence
1. In confluence, navigate to Space Tools / Content Tools / Export and choose XML format.
2. Download the export zip and unzip.
3. Run convert-html-entities.sh one time on exported files.
4. Run generate.sh script. 
5. Review generated content under out/wiki.
6. Move wiki home page to Home.md.
6. Copy content from out/wiki to your cloned github wiki and add/push

## Example of export / import commands
```bash
# git clone git@github.com:pzzd/confluence-to-github.git
# cd confluence-to-github
# unzip ~/Downloads/Confluence-export.zip
# convert-html-entities.sh 
# generate.sh
# mv out/wiki/IT-EAS-Web-Services.md out/wiki/Home.md
```

