#!/bin/bash


tar Jcf /tmp/backup/include.xz include
tar tvf /tmp/backup/include.xz
mkdir restore; cd restore/ ; tar xf /tmp/backup/include.xz 
