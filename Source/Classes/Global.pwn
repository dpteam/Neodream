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
	if(id > 310 || id < 0)
		return false;
	
	// A blacklist
	switch(id)
	{
		case 3..6, 8, 42, 65, 74, 86, 119, 149, 208, 273, 289:
			return false;
		default:
			// Not blacklisted! Correct class…
			return true;
	}
}
