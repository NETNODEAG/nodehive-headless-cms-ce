#!/usr/bin/env bash

set -e

# Color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

# Variables
DRUPAL_SETTINGS_NODEHIVE_FILE="./web/sites/default/settings.nodehive.php"
DRUPAL_SETTINGS_FILE="./web/sites/default/settings.php"

# Flag variables
SKIP_COMPOSER=false

# Parse command line options
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -s|--skip-composer) SKIP_COMPOSER=true ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

echo -e "\r\n"
if [ "$SKIP_COMPOSER" = false ]; then
    echo -e "${GREEN}### RUN: composer install ###${NC}"
    composer install --no-dev --no-interaction
    echo -e "${CYAN}### composer install -> DONE ###${NC}\n"
fi

echo -e "\r\n"
echo -e "${GREEN}### RUN: Drupal install ###${NC}"
./vendor/bin/drush site:install --account-name=admin --account-pass=admin -y
echo -e "${CYAN}### Drupal install -> DONE ###${NC}\n"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Enable Beekeeper module ###${NC}"
./vendor/bin/drush pm:enable nodehive_core_beekeeper -y
echo -e "${CYAN}### Enable Beekeeper -> DONE ###${NC}\n"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Install Nodehive CE module ###${NC}"
./vendor/bin/drush pm-enable nodehive_ce -y
echo -e "\r\n"
echo -e "${CYAN}### Install Nodehive CE module -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Nodehive install ###${NC}"
./vendor/bin/drush beekeeper:install
./vendor/bin/drush beekeeper:install --preset=nodehive-ce
echo -e "\r\n"
echo -e "${CYAN}### Nodehive install -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Set up settings.nodehive.php ###${NC}"
if [ ! -f "$DRUPAL_SETTINGS_NODEHIVE_FILE" ]; then
    touch "$DRUPAL_SETTINGS_NODEHIVE_FILE"
else
    rm  "$DRUPAL_SETTINGS_NODEHIVE_FILE" || true
    touch "$DRUPAL_SETTINGS_NODEHIVE_FILE"
fi

echo -e 'if (file_exists($app_root . \x27/\x27 . $site_path . \x27/settings.nodehive.php\x27)) {\n  include $app_root . \x27/\x27 . $site_path . \x27/settings.nodehive.php\x27;\n}' >> "$DRUPAL_SETTINGS_FILE"
echo "<?php" >> "$DRUPAL_SETTINGS_NODEHIVE_FILE"

echo -e "${CYAN}### Create settings.nodehive.php -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Create and set up private directory ###${NC}"
mkdir private
echo "\$settings['file_private_path'] = '../private';" >> "$DRUPAL_SETTINGS_NODEHIVE_FILE"
echo -e "${CYAN}### Create and set up private directory -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Set up JWT key ###${NC}"
openssl genrsa 2048 > ./private/jwt.key
echo -e "${CYAN}### Set up JWT key -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### Installation complete,  you can now log-in using username: ${YELLOW}admin${NC} ${GREEN}and password:${NC} ${YELLOW}admin${NC} ${GREEN}###${NC}"

echo -e "\r\n"
echo -e "${CYAN}# Visit www.nodehive.com and docs.nodehive.com for further information. #${NC}"
echo -e "${CYAN}## Happy Headless Coding and greets from the NETNODE team – www.netnode.ch. ##${NC}"

