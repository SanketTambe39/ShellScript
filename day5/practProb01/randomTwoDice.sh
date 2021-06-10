#!/bin/bash

firstRandomDice=$((RANDOM%6+1))
secondRandomDice=$((RANDOM%6+1))

echo "Addition of two random dice is ::"$(($firstRandomDice+$secondRandomDice))
