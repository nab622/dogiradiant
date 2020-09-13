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


// NAB622: These functions are used at the entry points to the OpenGL functions.
// They convert the higher-precision data types back to floats for OpenGL
void qglVertex2f_convertFloat( vec2_t const input ) {
    g_QglTable.m_pfn_qglVertex2f( (float) input[0], (float) input[1] );
}

void qglVertex3f_convertFloat( vec3_t const input ) {
    g_QglTable.m_pfn_qglVertex3f( (float) input[0], (float) input[1], (float) input[2] );
}

/*
void qglVertex3fv_convertFloat( vec3_t const *input ) {
    vec3_t temp;
    for( int i = 0; i < 3; i++ ) {
        temp[i] = input[i];
    }
    g_QglTable.m_pfn_qglVertex3f( (float) temp[0], (float) temp[1], (float) temp[2] );
//    g_QglTable.m_pfn_qglVertex3f( temp[0], temp[1], temp[2] );
}
*/
