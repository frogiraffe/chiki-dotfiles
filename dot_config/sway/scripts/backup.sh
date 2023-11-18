#!/bin/sh
rclone sync -v --create-empty-src-dirs /home/chiki/docs/  drive:/docs
rclone sync -v --create-empty-src-dirs /home/chiki/media/  drive:/media
