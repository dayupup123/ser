#!/bin/bash

# 设置要添加的新数据
new_data="REDIS_CACHE_DB=$1"

# 设置要查找的特定字符串
search_string="REDIS_PORT"

# 使用 sed 在特定字符串后面添加新数据，并将结果保存到临时文件
sed "/$search_string/a\\
$new_data" ./.env > ./temp.txt

# 将临时文件覆盖原始文件
mv ./temp.txt ./.env

# 删除临时文件（可选）
rm ./temp.txt

sed -i "/APP_NAME/cAPP_NAME=$2"  ./.env