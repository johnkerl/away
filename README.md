# away

No-frills setup for conveying minimal bashrc/vimrc/scripts to away hosts (EC2, etc.)

Simplification of https://github.com/johnkerl/scripts/tree/main/suitcase

## Usage

* Raw checkout of this repo has several good bits.
* Optionally run `sh populate.sh` to put more good bits into `./bin-general`.
* Using `scp`/`rsync`/etc put this directory into `~/away` on the remote host.
  * `rsync -rtlzv --delete $(pwd)/ remote-host-name.goes.here:away/`
  * Pay special attention to both trailing slashes -- they're important
* SSH there and `. ~/away/rc`.
