#!/usr/bin/env bash

# Color codes
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

echo -e "\r\n"
echo -e "${GREEN}### RUN: composer install ###${NC}"
composer install --no-dev --no-interaction
echo -e "${CYAN}### composer install -> DONE ###${NC}\n"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Drupal install ###${NC}"
drush site:install --account-name=admin --account-pass=admin -y
echo -e "${CYAN}### Drupal install -> DONE ###${NC}\n"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Enable Beekeeper module ###${NC}"
drush pm:enable nodehive_core_beekeeper -y
echo -e "${CYAN}### Enable Beekeeper -> DONE ###${NC}\n"

echo -e "\r\n"
echo -e "${GREEN}### RUN: Nodehive install ###${NC}"
drush beekeeper:installa
echo -e "${CYAN}### Nodehive install -> DONE ###${NC}"

echo -e "\r\n"
echo -e "${GREEN}### Installation complete,  you can now log-in using username: ${YELLOW}admin${NC} ${GREEN}and password:${NC} ${YELLOW}admin${NC} ${GREEN}###${NC}"

