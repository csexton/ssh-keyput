ssh-keyput
==========

Copies your ssh public key to a server.

Because <i>ssh user@hostname "echo `cat ~/.ssh/id_dsa.pub` >> ~/.ssh/authorized_keys"</i> is too hard to remember.

Since OS X does not have the handy "ssh-copy-id" bash script be default I wanted to add a gem that I could install easily to perform the same task. 

Currently I depend on a number of unix commands (like ssh and keygen), but I am sure that alot of these could be replace by ruby libraries (and then we could make this gem dependent on those) but this does what I need it to and I don't have to remember complicated command lines.

It is pronounced "ssssh-kaput."

INSTALL
=======

> sudo gem install csexton-ssh-keyput -s http://gems.github.com

USAGE
=====

> ssh-keyput user@example.com


COPYRIGHT
=========

Copyright (c) 2008 Christopher Sexton. See LICENSE for details.
