/*
   Copyright (C) 1999-2007 id Software, Inc. and contributors.
   For a list of contributors, see the accompanying CONTRIBUTORS file.

   This file is part of GtkRadiant.

   GtkRadiant is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   GtkRadiant is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GtkRadiant; if not, write to the Free Software
   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

#pragma once

// NAB622: This file contains the defines I made and a few global math functions, so plugins like the surface inspector
// and bobztoolz can see/use them along with the rest of Radiant

#include "version.h"
#include "aboutmsg.h"


// NAB622: This is the location local.pref and other configuration files will be stored
// If you fork the project, please change this so it doesn't conflict with others
#define PREFS_SUBDIRECTORY "upgRadiant"


// This has to be here for the functions below
#include <math.h>

// NAB622: These are my math functions, added here for global access
    inline int getDecimalPrecision( float input ) {
        //Figure out how many decimal places are in the input number
        int test = (int) input;
        int i = 0;
        int maxPrecision = 6;

        while ( test != input && i <= maxPrecision ) {
            i++;
            input *= 10;
            test = (int) input;
        }

        return i;
    }

    inline int getWholeNumberPrecision( float input ) {
        //Figure out how many decimal places are in the input number
        int test = (int) input;
        int i = 0;

        while ( test != 0 ) {
            i++;
            input /= 10;
            test = (int) input;
        }

        return i;
    }

    inline float calculateRotatingValueBeneathMax( float input, int max ) {
        float output = fmod( input, max );
        if( output < 0 ) output += max;
        return output;
    }


// GRID DEFINES

    // NAB622: Grid precisions down to 0.03125 have been added and they work - however, they're too precise to guarantee accuracy in a compiled map.
    // This define will limit the minimum grid setting. Changing this define prevents smaller grid sizes from appearing in the menu, and will not
    // allow the user to switch to a lower setting. This setting is also used for various other things, like the patch inspector.
    // Valid values here are 1.0, 0.5, 0.25, 0.125, 0.0625 and 0.03125. Anything else will have no effect or cause bugs.
    // Do not change this setting lightly, as most importantly, Radiant now uses it as an epsilon when calculating vertex locations to fix a "Snap to grid" bug!
    #define MIN_GRID_PRECISION 0.03125

    // NAB622: This is used to determine how many decimal places are in the lowest grid precision
    #define GRID_DECIMAL_PRECISION getDecimalPrecision( (float) MIN_GRID_PRECISION )


    // NAB622: This value is the maximum zoom-in distance on the grid. The numeric value specified here corresponds to the maximum
    // number of pixels the grid can render per block before it stops zooming in, at the smallest precision available
    #define MAX_GRID_ZOOM_PIXELS 45

    // NAB622: Calculate the actual zoom value needed, based on the values given previously
    #define MAX_GRID_ZOOM_BLOCKSIZE ( MAX_GRID_ZOOM_PIXELS / MIN_GRID_PRECISION )

    // NAB622: This is the maximum distance the grid can go on any axis, both positive and negative
    // This will simply translate into a value for g_MaxWorldCoord and g_MinWorldCoord on load, and those will be used throughout the rest of Radiant
    #define MAX_MAP_SIZE 65536

    // NAB622: Calculate the minimum size to be the opposite of the maximum
    #define MIN_MAP_SIZE -MAX_MAP_SIZE


// SURFACE INSPECTOR AND PATCH INSPECTOR

    // NAB622: Made this a define for easier changes later
    #define MAX_TEXPATH_SIZE 128

    // NAB622: This is the maximum number of items in the 'texture' combo box at the top of the surface/patch inspector
    #define MAX_NUM_TEXTURE_LIST_ITEMS 64

    // NAB622: Used in the surface inspector and patch inspector.
    // Anything lower than 4 can cause issues
    #define TEXTURE_SHIFT_PRECISION 4
    #define TEXTURE_ROTATE_PRECISION 4
    #define TEXTURE_SCALE_PRECISION 4

    // NAB622: These decimals can't get any more precise than 4 places without breaking stuff
    #define MAX_SHIFT_VALUE 999999.9999   //This is clamped to the texture resolution during editing, but allowing larger numbers is a good idea
    #define MAX_ROTATE_VALUE 9999.9999    //This value is clamped to 360 during editing, but allowing the user to type in larger numbers is a good idea
    #define MAX_SCALE_VALUE 99999.9999

    #define DEFAULT_SHIFT_INCREMENT_VALUE 1.0
    #define DEFAULT_ROTATE_INCREMENT_VALUE 22.5
    #define DEFAULT_SCALE_INCREMENT_VALUE 0.1

    #define MAX_FIT_VALUE 999.999

    // PATCH INSPECTOR ONLY
    #define MAX_SHIFT_INCREMENT DBL_MAX
    #define MAX_SCALE_INCREMENT DBL_MAX
    #define MAX_ROTATE_INCREMENT 360
