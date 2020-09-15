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


// NAB622: The purpose of this header is to put all the vector declarations in one location for easy precision changes later


// The data type used on this line will be propogated through the vectors and other precision values in the code, keeping it all uniform
typedef long double gridUnits_t;


typedef gridUnits_t vec_t;
typedef vec_t vec2_t[2];
typedef vec_t vec3_t[3];
typedef vec_t vec4_t[4];
typedef vec_t vec5_t[5];




// Everything below here is ONLY to be used for data conversions back to floats for OpenGL and other stuff.

typedef float vecFloat_t;
typedef vecFloat_t vecFloat2_t[2];
typedef vecFloat_t vecFloat3_t[3];
typedef vecFloat_t vecFloat4_t[4];
typedef vecFloat_t vecFloat5_t[5];

typedef vecFloat_t m4x4Float_t[16];
