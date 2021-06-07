extends Node2D

############ SteamApi
func _ready():
	var INIT = Steam.steamInit()
	print("Did Steam initialize?: "+str(INIT))

	if INIT['status'] != 1:
		print("Failed to initialize Steam. "+str(INIT['verbal'])+" Shutting down...")
	else:
		print("Ye, bra!")
#######################

#Lang_params
var Lang='ru'

func transl():
	TranslationServer.set_locale(Lang)
