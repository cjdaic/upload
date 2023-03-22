
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


#ifdef GL_ES
precision mediump float;
#endif
varying vec4 color;

void main (void)
{
	float c = 2.0 * (color.r - 0.5);
	gl_FragColor = vec4(pow(0.5, 2.0 * c) / 4.0, 0.0, 0.0, 1.0);
}
