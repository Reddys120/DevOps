#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print colored messages
echo -e "${RED}This is RED text${NC}"
echo -e "${GREEN}This is GREEN text${NC}"
echo -e "${YELLOW}This is YELLOW text${NC}"
echo -e "${BLUE}This is BLUE text${NC}"

# Example: using color in status messages
echo -e "${GREEN}[OK]${NC} Operation successful"
echo -e "${RED}[ERROR]${NC} Something went wrong"


| Color    | Code         |
| -------- | ------------ |
| Red      | `\033[0;31m` |
| Green    | `\033[0;32m` |
| Yellow   | `\033[1;33m` |
| Blue     | `\033[0;34m` |
| No Color | `\033[0m`    |
