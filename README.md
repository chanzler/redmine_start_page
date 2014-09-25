# redmine start page - Redmine plugin

This plugin redirects the user, just after he has logged in, to the URL defined in settings. When auto-logged-out the user will be redirected to the page he last visited. If the redirect url is not defined (default), the behaviour is as usual.

## Installation

    git clone https://github.com/chanzler/redmine_start_page

Restart Redmine's server.

## Configuration

Go to `Administration` > `Plugins` > `Configure` to set the URL for the new start page.

Enter the relative URL beginning with a slash (/my/page) or the absolute, FQDN URL (http://www.intersolve.de)
