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

// This is needed for the m4x4 stuff...only include it if it hasn't been already
#ifndef __MATHLIB__
#include "mathlib.h"
#endif

// Only include these if they haven't already been run...
#ifndef __IGL_H__
#include "igl.h"
#endif

#ifndef __QGL_H__
#include "qgl.h"
#endif


// NAB622: These functions are used at the entry points to the OpenGL functions.
// They convert the higher-precision data types back to floats for OpenGL

// 2 Vertices
inline void qglVertex2f_convertFloat( vec2_t const input ) {
    qglVertex2f( (float) input[0], (float) input[1] );
}


// ST Coordinates
inline void qglTexCoord2f_convertFloat( vec2_t const input ) {
    qglTexCoord2f( (float) input[0], (float) input[1] );
}


// 3 Vertices
inline void qglVertex3f_convertFloat( vec3_t const input ) {
    qglVertex3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Normals
inline void qglNormal3f_convertFloat( vec3_t const input ) {
    qglNormal3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Colors
inline void qglColor3f_convertFloat( vec3_t const input ) {
    qglColor3f( (float) input[0], (float) input[1], (float) input[2] );
}


// m4x4 Matrix
inline void qglMultMatrixf_convertFloat( m4x4_t const input ) {
    m4x4Float_t temp;
    for( int i = 0; i < 16; i++ ) {
        temp[i] = (float) input[i];
    }
    qglMultMatrixf( temp );
}


// projection matrix
inline void qglGetProjectionMatrixAsVec_t( vec_t output[4][4] ) {
    float temp[4][4];

    qglGetFloatv( GL_PROJECTION_MATRIX, &temp[0][0] );

    for( int i = 0; i < 4; i++ ) {
        for( int j = 0; j < 4; j++ ) {
            output[i][j] = (vec_t) temp[i][j];
        }
    }
}


// multMatrix for camwindow
inline void qglMultMatrixAsVec_t( vec_t input[4][4] ) {
    float temp[4][4];

    for( int i = 0; i < 4; i++ ) {
        for( int j = 0; j < 4; j++ ) {
            temp[i][j] = (float) input[i][j];
        }
    }

    qglMultMatrixf( &temp[0][0] );
}
