# NodeHive Headless CMS CE

## What is NodeHive Headless CMS?

NodeHive Headless CMS is a headless composable platform that serves as your central commerce, marketing, communication and customer engagement hub. NodeHive is built on top of the wide spread [Drupal CMS](https://www.drupal.org) and extends Drupal with advanced headless features.

[<img src="/features.png" style="max-width:800px;border: 2px solid #8EBAB6">](https://www.nodehive.com)

This repository is the offical NodeHive Headless CMS Community Edition. The makers of NodeHive also offer [a paid SaaS version of NodeHive Headless CMS](https://www.nodehive.com/saas-pricing) as well as enterprise support.

## Benefits
- Easily manage all your websites from one place
- Editing content is simple and fast
- Customize your structured content just the way you want it
- Plan out your content ahead of time
- Make sure your content goes live at the right time
- ... and much more

## Features
- One backend, multiple websites
- Visual Editor
- Advanced Content Modelling
- Paul AI
- Dashboards
- Content Calendar
- RAG / AI Chat (SaaS and enterprise only)
- Content Projects (SaaS and enterprise only)
- ... and much more

## Important links:
- www.nodehive.com - product website
- [docs.nodehive.com](https://docs.nodehive.com) - developer docs
- [YouTube playlist](https://www.youtube.com/playlist?list=PLx8ET0RIaWG2NcK6TiM7fC3TOOkejYNzF) - updates and tutorials about NodeHive Headless CMS
- [nodehive.com/newsletter](https://www.nodehive.com/newsletter) - Sign the Newsletter to stay updated

## Installation

### Install with DDEV

Prerequisite: DDEV installed (https://ddev.readthedocs.io/en/stable/)

```
git clone https://github.com/NETNODEAG/nodehive-headless-cms-ce
cd nodehive-headless-cms-ce
ddev start
ddev install-nodehive-ce
```
Your site is now available at https://nodehive-ce.ddev.site

### Install with composer directly

Prerequisite: A working LAMP stack

```
composer create-project netnodeag/nodehive-headless-cms-ce nodehive-ce
cd nodehive-ce
composer install
```
Adjust the `settings.php` so that Drupal can be installed [Drupal Docs](https://www.drupal.org/docs/user_guide/en/install-requirements.html)
```
composer install-nodehive-ce
```
