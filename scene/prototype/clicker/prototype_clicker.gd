class_name PrototypeClicker
extends Control
## A clicker prototype creating stardust.

## 顯示stardust用的label
@export var label : Label

## stardust的數量
var stardust : int = 0

## 初始化
func _ready() -> void:
	update_label_text()

## 點擊產生stardust
func create_stardust() -> void:
	stardust += 1
	update_label_text()

## 刷新label顯示
func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust

## 當按鈕按下時執行的動作
func _on_button_pressed() -> void:
	create_stardust()
