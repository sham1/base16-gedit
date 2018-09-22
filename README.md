# Base16 themes for Gedit

## Installation guide

    $ git clone https://github.com/sham1/base16-gedit.git ~/.cache/base16-gedit
    $ cd ~/.cache/base16-gedit/colors
    $ BASE16_GEDIT_THEME_DIR="${PWD}"
    $ mkdir -p ~/.local/share/gtksourceview-3.0/styles
    $ cd ~/.local/share/gtksourceview-3.0/styles
    $ ln -s "${BASE16_GEDIT_THEME_DIR}/*.xml" .

## Building themes

You need [pybase16-builder](https://github.com/InspectorMustache/base16-builder-python) to be in your path.

After that you can just run `build.sh` at the project root (requires `bash`).

## License

MIT
