#!/usr/bin/env bash

# Color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

echo -e "${GREEN}### RUN: composer install ###${NC}"
composer install --no-dev --no-interaction
echo -e "${CYAN}### composer install -> DONE ###${NC}\n"

echo -e "${GREEN}### RUN: Drupal install ###${NC}"
drush site:install -y
echo -e "${CYAN}### Drupal install -> DONE ###${NC}\n"

echo -e "${GREEN}### RUN: Enable Beekeeper module ###${NC}"
drush pm:enable nodehive_core_beekeeper -y
echo -e "${CYAN}### Enable Beekeeper -> DONE ###${NC}\n"

echo -e "${GREEN}### RUN: Nodehive install ###${NC}"
drush beekeeper:install
echo -e "${CYAN}### Nodehive install -> DONE ###${NC}"

