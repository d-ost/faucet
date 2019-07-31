#!/usr/bin/env bash

echo ""
echo "#### ENDLESS FAUCET #######################"
echo "## Runnings faucet in \"endless\" mode.  ##"
echo "## Whenever it crashes, it is restarted. ##"
echo "## Use Ctrl+C to stop it.                ##"
echo "###########################################"
echo ""

counter=0

while [ $counter -gt -1 ]
do

    NODE_ENV=weth ./faucet --non-interactive ./config/weth.password --port 60501 5

    counter=$((counter+1))
    echo ""
    echo "##################################################"
    echo "## Faucet crashed ${counter} times. Restarting! ##"
    echo "##################################################"
    echo ""
done
