#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=auto install
#AutoIt3Wrapper_Res_Fileversion=3.00
#AutoIt3Wrapper_Res_ProductName=vu anhloc
#AutoIt3Wrapper_Res_ProductVersion=3.00al
#AutoIt3Wrapper_Res_CompanyName=technology entertainment
#AutoIt3Wrapper_Res_LegalCopyright=technology entertainment
#AutoIt3Wrapper_Res_LegalTradeMarks=technology
#AutoIt3Wrapper_Res_SaveSource=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstants.au3>
#include <ColorConstants.au3>

GUICreate('automatic installation of Python library', 500, 300)
GUISetBkColor($COLOR_RED)
$text=GUICtrlCreateLabel('automatically install all Python libraries without enabling Command Prompt', 10, 10, 480, 20)
$text_input=GUICtrlCreateLabel('enter library name', 10, 40, 480, 20)
$input=GUICtrlCreateInput('', 40, 40, 480, 20)
$install=GUICtrlCreateButton('install', 10, 80, 480, 100)
GUISetState()
While True
$msg=GUIGetMsg()
if $msg=$GUI_EVENT_CLOSE Then
Exit

EndIf

if $msg=$install Then
$doc=GUICtrlRead($input)
Send('#r')
Sleep(500)
Send('pip install ' & $doc)
Send('{ENTER}')
MsgBox(64, 'install', 'successful installation')
Exit
EndIf

WEnd