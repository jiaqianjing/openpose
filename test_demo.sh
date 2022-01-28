#!/bin/bash
# ==================================================================
# hand: 是否检测手部细节关键点信息
# face: 是否检测面部细节的关键点信息
# image_dir: 待提取姿态关键点信息的原始图像目录
# write_images: 输出目录
# write_images_format: 输出图片的文件格
# write_json: 以 json 的格式保存关键点信息，格式为：(x, y, confidence)
# display: 执行完成后是否通过显示设备展示结果, 0: 不展示 1: 展示
# render_pose: 是否渲染骨架信息,混合到原始图上, 0:不渲染，直接输出原始图像 1: 渲染骨架信息并叠加到原始图像
# disable_blending: 关闭渲染的骨架信息和原始图像混合，只生成关键点骨架信息
# ==================================================================
./build/examples/openpose/openpose.bin --hand \
	--image_dir ../../gans/CIHP_PGN/datasets/CIHP/images/ \
	--write_images output_images/ \
	--write_images_format jpg \
	--write_json output_jsons/ \
	--display 0 \
	--render_pose 1 \
	--disable_blending
