#!/bin/bash

# Update blue toogle-on button with green version.
cp -f ./toggle-on.svg /usr/share/cinnamon/theme

# Make Mint-Y-Dark similar green accents and get rid of light grey panel and dialog accents.
sed -i 's/#3584e4/#00AA00/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#3584e4/#555555/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#454545/#222223/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#333333/#222223/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#78aeed/#00AA00/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#629fea/#33bb33/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/#1f76e1/#007700/g' /usr/share/cinnamon/theme/cinnamon.css

# Green window tile preview.
sed -i 's/background-color: rgba(120, 174, 237, 0.2)/background-color: rgba(0, 170, 0, 0.2)/g' /usr/share/cinnamon/theme/cinnamon.css
sed -i 's/border: 1px solid rgba(120, 174, 237, 0.7)/border: 1px solid rgba(0, 170, 0, 0.7)/g' /usr/share/cinnamon/theme/cinnamon.css

# Mint-Y-Dark green running application instances counter badge.
sed -i -n -f ./change_badge.sed /usr/share/cinnamon/theme/cinnamon.css

