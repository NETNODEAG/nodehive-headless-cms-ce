# NodeHive Headless CMS CE

<img src="https://docs.nodehive.com/nodehive-dashboard.png">

## What is NodeHive Headless CMS?

NodeHive provides a seamless content management experience, empowering you to create, manage, and publish content with ease. More at www.nodehive.com.

## Documentation

https://docs.nodehive.com

## Installation

### Install using DDEV

  Prerequisite:
   - DDEV installed (https://ddev.readthedocs.io/en/stable/)

1. `git clone https://github.com/NETNODEAG/nodehive-headless-cms-ce`
2. `cd nodehive-headless-cms-ce`
3. `ddev start`
4. `ddev install-nodehive-ce`
5. Your site is now available at https://nodehive-ce.ddev.site

### Manual installation

  Prerequisite:
   - A working LAMP stack

  1. `composer create-project netnodeag/nodehive-headless-cms-ce nodehive-ce`
  2. `cd nodehive-ce`
  3. Run `composer install`
  4. Adjust the `settings.php` so that Drupal can be installed (see https://www.drupal.org/docs/user_guide/en/install-requirements.html)
  5. Run `composer install-nodehive-ce`
  6. Site should now be set-up correctly, you can access it via configured local url in your LAMP stack.


## WIP

This repo is currently developing. If you want to get an update, when we are ready, consider subscribing our Newsletter.

-> www.nodehive.com/newsletter

