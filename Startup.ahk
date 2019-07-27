#Include C:\Program Files\AutoHotkey\lib\RapidHotkey.ahk
#SingleInstance force
#InstallKeybdHook

SetCapslockState, AlwaysOff

CapsLock & a::CSend("ä", "Ä")
CapsLock & u::CSend("ü", "Ü")
CapsLock & o::CSend("ö", "Ö")
CapsLock & 4::CSend("¥", "€")
CapsLock & s::CSend("ß")

RAlt::LAlt

CapsLock::
	p := Morse()
	If (p = "00")
		SetCapslockState, AlwaysOff
	Else If (p = "01")
		SetCapslockState, AlwaysOn
		
CSend(p_normal, p_shifted="") {
	key:=(!GetKeyState("Shift") ? p_normal:p_shifted)
	Send, %key%
}

