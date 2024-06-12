# NodeHive Headless CMS CE

## What is NodeHive Headless CMS?

NodeHive Headless CMS is a headless composable platform that serves as your central commerce, marketing, communication and customer engagement hub. NodeHive is built on top of the wide spread [Drupal CMS](https://www.drupal.org) and extends Drupal with advanced headless features.

This repository is the offical NodeHive Headless CMS Community Edition. The makers of NodeHive also offer [a paid SaaS version of NodeHive Headless CMS](https://www.nodehive.com/saas-pricing) as well as enterprise support.

<img src="https://netnode.nodehive.app/sites/default/files/2024-05/nodehive_spaces.png" style="max-width:800px">

## Features
- One backend, multiple websites
- Visual Editor
- Advanced Content Modelling
- Paul AI
- Dashboards
- Content Calendar
- ... and much more

## Important links:
- www.nodehive.com - product website
- [docs.nodehive.com](https://docs.nodehive.com) - developer docs
- [YouTube playlist](https://www.youtube.com/playlist?list=PLx8ET0RIaWG2NcK6TiM7fC3TOOkejYNzF) - updates and tutorials about NodeHive Headless CMS
- [nodehive.com/newsletter](https://www.nodehive.com/newsletter) - Sign the Newsletter to stay updated

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