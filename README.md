dot_files
=========

Some of my config files.

I manage them with rcm: http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos

I'm testing out multiple-repo management via [repo](https://source.android.com/source/developing.html). To get started
(mostly a reference for me), run:

1. Install repo:
    1. `curl http://git-repo.googlecode.com/files/repo-1.13 > ~/bin/repo`
    2. `chmod a+x ~/bin/repo`
2. `mkdir .dotfiles`
3. `cd .dotfiles`
4. `repo init -u https://github.com/joerocklin/dot_files.git -b manifest`
5. `repo sync`
6. `repo forall -p -v -c 'git submodule update --init'`

Not sure if my current directory layout makes sense - I have almost not experience with repo at this point, so don't
think this is in any way a best practice.

General Workflow of Changes
===========================

