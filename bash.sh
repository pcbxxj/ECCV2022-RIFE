#!/bin/bash

# 遍历目录中所有 .mp4 文件
for file in $(./input/ -name "*.mp4"); do
  # 使用 ffmpeg 将文件转换为 flv 格式
  #ffmpeg -i "$file" -c:v libx264 -c:a aac -strict experimental "${file%.mp4}.flv"
  python i_video.py --video=$file
done