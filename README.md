# NodeHive Headless CMS CE

<img src="https://netnode.nodehive.app/sites/default/files/2024-05/nodehive_spaces.png" style="max-width:800px">

This repository is dedicated to the headless backend. For a quick start on your frontend with NextJS 14, visit our starter template at https://github.com/NETNODEAG/nodehive-nextjs-starter.

## What is NodeHive Headless CMS?

NodeHive Headless CMS is the premier headless solution built on top of Drupal. As an open-core digital platform, NodeHive offers a comprehensive suite for multi site/channel, content management, media handling, and editorial planning. Designed to facilitate the operation of multiple websites from a single backend, it provides all the necessary tools for seamless content management at scale.

More at www.nodehive.com and our YouTube playlist https://www.youtube.com/playlist?list=PLx8ET0RIaWG2NcK6TiM7fC3TOOkejYNzF

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


## Newsletter

To stay informed about future developments, consider subscribing to our newsletter.

-> www.nodehive.com/newsletter

