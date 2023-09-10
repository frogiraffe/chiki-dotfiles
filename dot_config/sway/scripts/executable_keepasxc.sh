#!/bin/bash
secret-tool lookup keepass Passwords | keepassxc --pw-stdin ~/docs/Passwords.kdbx
