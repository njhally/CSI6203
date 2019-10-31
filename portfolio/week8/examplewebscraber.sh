#!/bin/bash


curl -s example.com | sed -n '
s/<h1>(.*)<\/h1>/\1/p
s/<p>([a-Z\. ])/\1/p
s/([a-Z\. ])<\/p>/\1/p'