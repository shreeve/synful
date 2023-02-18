# synful

Ruby utility that shows syntax highlighted code in your browser

## Goals

1. Provide an easy way to view and print syntax highlighted source code
2. Enable file selection or rejection in an intuitive way

## Overview

Synful is a command line utility that will render syntax highlighted
source code in your browser. Simply indicate the file or directory
path names with optional file extensions to include or exclude. Synful
will generate a nice index and an entry for each file and it will
serve up the content and launch you web browser to view it. Once the
request has been served, the server will close down and exit. If you'd
like to keep the server running so that you can make changes and hit
refresh, there is an option to do that also. All syntax highlighting
is made possible by the amazing Rouge library.

## Examples

```
$ synful winr/bin/winr censive/lib/censive.rb
```

A more complicated example is:

```
synful -f -x spec,ru lib test /tmp/example.rb -- -test/boring-results.txt
```

This will keep `synful` in the foreground (the `-f` option) and will
exclude all files with the `.spec` or `.ru` extensions. It will also
include files from the `lib/` and `test/` directories as well as the
`/tmp/example.rb` file. Even though the `test/boring-results.txt` file
should be rendered, we have disabled it via the `-` (minus sign or dash)
in front of it's filename. Note that to use this type of negation, we
need to precede it with a "double-dash" `--` to tell `synful` that we
are done with the normal command options.

## Install

Install via `rubygems` with:

```
gem install synful
```

## Options

```
$ synful -h

usage: synful [options] <paths ...> [--] <-paths_to_skip ...>
    -b, --bypass                     Bypass (skip over) top comments (begin with "#") in files
    -f, --foreground                 Stay in the foreground, allows more requests
    -h, --help                       Show help and command usage
    -i, --include <exts>             Comma list of extensions to include (incompatible with -x)
    -x, --exclude <exts>             Comma list of extensions to exclude (incompatible with -i)
```

## License

This software is licensed under terms of the MIT License.
