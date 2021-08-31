# Confluence space to github markdown pages
Convert a confluence space export in XML format to github markdown pages

You can run this script multiple times on your exported files: it deletes .md files in the output directory before creatting them.

## To export a space from confluence
1. In Confluence, navigate to Space Tools / Content Tools / Export and choose XML format. Download the export zip.
2. Clone this repo to your laptop.
3. Unzip the Confluence export inside the cloned project dir.
4. Run convert-html-entities.sh on exported files. It's only necessary to run it once.
5. Run generate.sh script.
6. Review generated content under out/wiki. You can copy files and commit to a GitHub code repo to verify the markdown in GitHub itself.
7. Move wiki home page to Home.md.
8. Clone your GitHub wiki (not the repo code!). Copy .md files from out/wiki into the wiki and add/commit/push.

## Example of export / import commands
```bash
# git clone git@github.com:pzzd/confluence-to-github.git
# cd confluence-to-github
# unzip ~/Downloads/Confluence-export.zip
# sh convert-html-entities.sh 
# sh generate.sh
```

