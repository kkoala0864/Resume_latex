#! /bin/bash

OS_TYPE="$(uname -s)"

case "${OS_TYPE}" in
    Darwin*)
	brew cask install basictex;;
    Linux)
	apt install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra;;
    *)
	echo "Not Supprt OS Type";;
esac
