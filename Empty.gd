extends Node2D

#on_init function
func _ready():
	TextSetter()

#set text from BD
func TextSetter():
	$TestLabel.set_text(tr('test_1'))
	$TestText.set_text(tr('test_2'))

#translation module with Global refs
func _on_Translation_pressed():
	if Global.Lang=='ru':
		Global.Lang='en'
	else:
		Global.Lang='ru'
	Global.transl()

	TextSetter()
