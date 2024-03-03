#!/bin/bash
secret-tool lookup keepass Passwords | keepassxc --pw-stdin ~/docs/important/Passwords.kdbx
