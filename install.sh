#!/bin/sh

sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mouse484 --promptBool asdf=false
