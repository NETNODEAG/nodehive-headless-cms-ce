# NodeHive Headless CMS CE

## What is NodeHive Headless CMS?

NodeHive headless CMS is a headless composable platform that serves as your central commerce, marketing, communication and customer engagement hub.

<img src="https://netnode.nodehive.app/sites/default/files/2024-05/nodehive_spaces.png" style="max-width:800px">

## Features
- One backend, multiple websites
- Visual Editor
- Advanced Content Modelling
- Paul AI
- Dashboards
- Content Calendar
- ... and much more

More at www.nodehive.com and our YouTube playlist https://www.youtube.com/playlist?list=PLx8ET0RIaWG2NcK6TiM7fC3TOOkejYNzF

Newsletter: To stay informed about future developments, consider subscribing to our newsletter.

www.nodehive.com/newsletter


## Documentation

Visit https://docs.nodehive.com for extended developer documentation.

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