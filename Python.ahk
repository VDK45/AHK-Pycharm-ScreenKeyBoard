

Gui, Font, cRed
Gui, Font, s13
Gui, Add, Text, x60 y15, Pycharm Комбинации

Gui, Font, cGreen
Gui, Font, s13
Gui, Add, Text, x30 y+15, "CTR + D"         	дубликат строки
Gui, Add, Text, x30 y+15, "CTR + Y"         	удалить строку
Gui, Add, Text, x30 y+15, "Shift + Enter"    	Новая строка
Gui, Add, Text, x30 y+15, "TAB"              	+Tab
Gui, Add, Text, x30 y+15, "Shift + TAB"    	- TAB
Gui, Add, Text, x30 y+15, "CTR + ALT + T"	Обернуть в конструкцию

Gui, Font, cRed
Gui, Font, s13
Gui, Add, Text, x60 y+15,  ScreenKeyBoard + Pycharm

Gui, Font, cGreen
Gui, Font, s13
Gui, Add, Text, x30 y+15, "Home or Win"		RUS-ENG
Gui, Add, Text, x30 y+15, "Pause"		()
Gui, Add, Text, x30 y+15, "Insert"			{}
Gui, Add, Text, x30 y+15, "PrintScreen"		print()
Gui, Add, Text, x30 y+15, ", и ="			, и = + пробел
Gui, Add, Text, x30 y+15, "End" 			Run script

Gui, Font, cRed
Gui, Font, s13
Gui, Add, Text, x60 y+15, 	"Alt"	 Suspend / on-off
Gui, Add, Text, x60 y+15,  	CTR + SHIFT + SPACE Поверх окон


Gui, -AlwaysOnTop
Gui, Color, Black
Gui, Show, w430 h580, Keys presset

^+SPACE:: Winset, Alwaysontop, , A  ;(CTR + SHIFT + SPACE)

*~Pause::
sendinput {LShift down}
send, {(} 
send, {)} 
KeyWait, LShift
sendinput {LShift up}
Sleep, 100
send, {Left} 
return

*~Ins::
send, {Ins}
sendinput {LShift down}
send, {{} 
send, {}} 
KeyWait, Ins
sendinput {LShift up}
Sleep, 100
send, {Left} 

return


*~Home:: ; RUS-ENG
sendinput {LWin down}
send, {Space} 
KeyWait, Home
sendinput {LWin up}
return

*~LWin:: ; RUS-ENG
sendinput {LWin down}
send, {Space} 
KeyWait, LWin
sendinput {LWin up}
return

*~PrintScreen::
Send, print('')
KeyWait, PrintScreen
Sleep, 50
send, {Left} 
send, {Left} 
return

*~End::  ;Run script CTR+SHIFT+F10
sendinput {LShift down}
sendinput {LCtrl down}
send, {F10} 
KeyWait, End
sendinput {LCtrl up}
sendinput {LShift up}
return

*~vkBA:: ; Точка запитая
send, {vk8} 
send, {:} 
return

*~vkDE:: ; 2 точки
send, {vkDE} 
send, {Left} 
return

*~vkBC:: ; Запятая
send, {Space} 
return

*~vkBB:: ; =
send, {Space} 
return


LAlt:: Suspend ;Пауза

