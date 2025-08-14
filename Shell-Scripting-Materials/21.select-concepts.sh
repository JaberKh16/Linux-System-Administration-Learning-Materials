#!/bin/bash

# this scripts work with select

select cars in Mercedez BMW Rover Audi Tesla
do
    echo "${cars}"
done
