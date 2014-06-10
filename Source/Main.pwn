//
// Main.pwn
//
// © DartPower Team, 2014.
// See AUTHORS file for more information.
//
// This code is covered by LGPL v3 license.
// See LICENSE file for more information.
//


// Base include
#include <a_samp>

// Names, localizations, etc.
#include "Locale/Global.pwn"
// <#Write language to build with here#>
#define GAMEMODE_LOCALE "en_US"
// Include locale
#include "Locale/"GAMEMODE_LOCALE".pwn"

// Classes
#include "Classes/Global.pwn"

// Places
#include "Places/Classes.pwn"

// Gamemode initialization
public OnGameModeInit()
{
	// Print intro
	print(LOCALE_INTROTEXT);
	
	// Set gamemode name displayed in server browser
	SetGameModeText(GAMEMODE_NAME);
	
	// FIXME: this function is required for fine animations… SAMP bug
	UsePlayerPedAnims();
	
	// Add all available classes
	for(new i = 0; i < 311; ++i)
		if(IsValidClass(i))
			AddPlayerClass(i, COORDS_DEFAULT, 0, 0, 0, 0, 0, 0);
}
