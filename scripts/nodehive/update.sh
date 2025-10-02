#!/usr/bin/env bash

set -e

# Color codes
RED="\e[31m"
GREEN="\033[0;32m"
BOLDGREEN="\e[1;${GREEN}m"
YELLOW="\033[1;33m"
CYAN="\033[0;36m"
NC="\033[0m" # No Color

# Variables
DRUPAL_SETTINGS_NODEHIVE_FILE="./web/sites/default/settings.nodehive.php"
DRUPAL_SETTINGS_FILE="./web/sites/default/settings.php"

# Flag variables
SKIP_COMPOSER=false

cat << EOF

#############################################################

┏┓╻┏━┓╺┳┓┏━╸╻ ╻╻╻ ╻┏━╸   ╻ ╻┏━╸┏━┓╺┳┓╻  ┏━╸┏━┓┏━┓   ┏━╸┏┳┓┏━┓
┃┗┫┃ ┃ ┃┃┣╸ ┣━┫┃┃┏┛┣╸    ┣━┫┣╸ ┣━┫ ┃┃┃  ┣╸ ┗━┓┗━┓   ┃  ┃┃┃┗━┓
╹ ╹┗━┛╺┻┛┗━╸╹ ╹╹┗┛ ┗━╸   ╹ ╹┗━╸╹ ╹╺┻┛┗━╸┗━╸┗━┛┗━┛   ┗━╸╹ ╹┗━┛
Scale your digital platform.

#############################################################

EOF


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
    echo -e "${RED}### RUN: composer update ###${NC}"
    composer update --no-dev --no-interaction
    echo -e "${CYAN}### composer update -> DONE ###${NC}\n"
fi

echo -e "\r\n"
echo -e "${RED}### RUN: NodeHive update ###${NC}"
./vendor/bin/drush beekeeper:install
./vendor/bin/drush beekeeper:install --preset=nodehive-ce
echo -e "${CYAN}### NodeHive update -> DONE ###${NC}"

echo -e "\r\n"
echo -e "\r\n"
cat << EOF

#############################################################

┏┓╻┏━┓╺┳┓┏━╸╻ ╻╻╻ ╻┏━╸   ╻ ╻┏━╸┏━┓╺┳┓╻  ┏━╸┏━┓┏━┓   ┏━╸┏┳┓┏━┓
┃┗┫┃ ┃ ┃┃┣╸ ┣━┫┃┃┏┛┣╸    ┣━┫┣╸ ┣━┫ ┃┃┃  ┣╸ ┗━┓┗━┓   ┃  ┃┃┃┗━┓
╹ ╹┗━┛╺┻┛┗━╸╹ ╹╹┗┛ ┗━╸   ╹ ╹┗━╸╹ ╹╺┻┛┗━╸┗━╸┗━┛┗━┛   ┗━╸╹ ╹┗━┛
Scale your digital platform.

#############################################################

EOF

echo -e "${RED}- www.nodehive.com ${NC}"
echo -e "${RED}- www.nodehive.com/newsletter – Feature Updates${NC}"
echo -e "${RED}- docs.nodehive.com – Developer documentation${NC}"
echo -e "${RED}- www.netnode.ch – Makers of NodeHive Headless CMS ${NC}"
echo -e "\r\n"

echo -e "And now have fun and run 'ddev launch' to open the site in your browser."
echo -e "\r\n"
echo -e "\r\n"
