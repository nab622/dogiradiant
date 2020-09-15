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

// This is needed for the m4x4 stuff...
#include "mathlib.h"

#ifndef __QERPLUGIN_H__

// NAB622: These functions are used at the entry points to the OpenGL functions.
// They convert the higher-precision data types back to floats for OpenGL

// 2 Vertices
inline void qglVertex2f_convertFloat( vec2_t const input ) {
    m_pfn_qglVertex2f( (float) input[0], (float) input[1] );
}


// ST Coordinates
inline void qglTexCoord2f_convertFloat( vec2_t const input ) {
    m_pfn_qglTexCoord2f( (float) input[0], (float) input[1] );
}


// 3 Vertices
inline void qglVertex3f_convertFloat( vec3_t const input ) {
    m_pfn_qglVertex3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Normals
inline void qglNormal3f_convertFloat( vec3_t const input ) {
    m_pfn_qglNormal3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Colors
inline void qglColor3f_convertFloat( vec3_t const input ) {
    m_pfn_qglColor3f( (float) input[0], (float) input[1], (float) input[2] );
}


// m4x4 Matrix
inline void qglMultMatrixf_convertFloat( m4x4_t const input ) {
    m4x4Float_t temp;
    for( int i = 0; i < 16; i++ ) {
        temp[i] = (float) input[i];
    }
    m_pfn_qglMultMatrixf( temp );
}

#endif
#ifdef __QERPLUGIN_H__

// Only include this if it hasn't already been run...
#ifndef __IGL_H__
#include "igl.h"
#endif

//This part is for plugins only...plugins need to use g_QglTable, but we still need these functions

extern _QERQglTable g_QglTable;

// 2 Vertices
inline void qglVertex2f_convertFloat( vec2_t const input ) {
    g_QglTable.m_pfn_qglVertex2f( (float) input[0], (float) input[1] );
}


// ST Coordinates
inline void qglTexCoord2f_convertFloat( vec2_t const input ) {
    g_QglTable.m_pfn_qglTexCoord2f( (float) input[0], (float) input[1] );
}


// 3 Vertices
inline void qglVertex3f_convertFloat( vec3_t const input ) {
    g_QglTable.m_pfn_qglVertex3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Normals
inline void qglNormal3f_convertFloat( vec3_t const input ) {
    g_QglTable.m_pfn_qglNormal3f( (float) input[0], (float) input[1], (float) input[2] );
}


// 3 Colors
inline void qglColor3f_convertFloat( vec3_t const input ) {
    g_QglTable.m_pfn_qglColor3f( (float) input[0], (float) input[1], (float) input[2] );
}


// m4x4 Matrix
inline void qglMultMatrixf_convertFloat( m4x4_t const input ) {
    m4x4Float_t temp;
    for( int i = 0; i < 16; i++ ) {
        temp[i] = (float) input[i];
    }
    g_QglTable.m_pfn_qglMultMatrixf( temp );
}

#endif
