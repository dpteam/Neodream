//
// Classes/Global.pwn
//
// Class-related functions.
//
// © DartPower Team, 2014.
// See AUTHORS file for more information.
//
// This code is covered by LGPL v3 license.
// See LICENSE file for more information.
//


// Detect if class is valid
IsValidClass(id)
{
	// Class doesn't go beyond 310 and can't be negative
	if(skinid > 310 || skinid < 0)
		return false;
	
	// A blacklist
	switch(id)
	{
		case 3:
		case 4:
		case 5:
		case 6:
		case 8:
		case 42:
		case 65:
		case 74:
		case 86:
		case 119:
		case 149:
		case 208:
		case 273:
		case 289:
			return false;
		default:
			// Not blacklisted! Correct class…
			return true;
	}
}
