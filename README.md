github-connect
==============

Installs git and github's host key, then checks if ssh access is possible.

If you're getting an error, try ssh-add. For detailed troubleshooting, see
https://help.github.com/articles/using-ssh-agent-forwarding.

Include this in your recipes with

    include_recipe "github-connect"
