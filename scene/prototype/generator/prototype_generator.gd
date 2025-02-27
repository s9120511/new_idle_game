class_name PrototypeGenerator
extends Control
## 自動產生stardust

var stardust : int = 0
@export var label : Label
@export var timer : Timer
@export var button : Button

## 初始化label
func _ready() -> void:
	update_label_text()

## 產生 stardust
func create_stardust() -> void :
	stardust += 1
	update_label_text()
	
## label刷新 stardust的數值
func update_label_text() -> void :
	label.text = "Stardust : %s" %stardust
	
## 開始產生stardust
func start_generating_stardust() -> void :
	timer.start()
	button.disabled = true
	
## 按下按鈕的動作
func _on_button_pressed() -> void:
	start_generating_stardust()

## 當timer結束時的動作
func _on_timer_timeout() -> void:
	create_stardust()
