# Author: Jason
# Date: 2023-10-05
# Python Version: 3.x
# IDE: DataSpell 2024.1.3

# This script merges all files from subdirectories within the source directory into a single target directory.
#
# Scope:
# - Create the target directory if it does not exist.
# - Exclude the current script file from being moved.
# - Traverse all subdirectories and files within the source directory.
# - Handle naming conflicts by appending a numerical suffix to the target file name.
# - Move files from the source directory to the target directory.


import os
import shutil

def merge_files_to_folder(source_directory, target_directory="合并"):
    # 创建目标文件夹，如果不存在
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
        print(f"Created target directory: {target_directory}")
    
    # 获取当前脚本的文件名
    current_script = os.path.basename(__file__)
    
    # 遍历源目录中的所有子文件夹和文件
    for root, dirs, files in os.walk(source_directory):
        for file in files:
            # 排除当前脚本文件
            if file == current_script:
                continue
            
            # 构建源文件路径
            source_file = os.path.join(root, file)
            # 构建目标文件路径
            target_file = os.path.join(target_directory, file)
            
            # 检查是否存在同名文件，处理命名冲突
            if os.path.exists(target_file):
                base, extension = os.path.splitext(file)
                i = 1
                while os.path.exists(target_file):
                    target_file = os.path.join(target_directory, f"{base}_{i}{extension}")
                    i += 1
            
            # 移动文件
            shutil.move(source_file, target_file)
            print(f"Moved {source_file} to {target_file}")

# 获取当前脚本所在的目录
source_directory = os.path.dirname(__file__)
merge_files_to_folder(source_directory)