ssh-keyput
==========

Copies your ssh public key to a server.

Because <i>ssh user@hostname "echo `cat ~/.ssh/id_dsa.pub` >> ~/.ssh/authorized_keys"</i> is too hard to remember.

Since OS X does not have the handy "ssh-copy-id" bash script by default I wanted to add a gem that I could install easily to perform the same task. 

Currently this is no more than a sh script, as it depends on a number of unix commands (like ssh and ssh-keygen). I am sure that much of this could be replace by pure ruby libraries (and then be made dependencies) but this does what I need it to and I don't have to remember complicated commands.

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
