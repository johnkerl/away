# away

No-frills setup for conveying minimal bashrc/vimrc/scripts to away hosts (EC2, etc.)

Simplification of https://github.com/johnkerl/scripts/tree/main/suitcase

## Usage

Using `scp`/`rsync`/etc put this directory into `~/away` on the remote host.

SSH there and `. ~/away/rc`.
