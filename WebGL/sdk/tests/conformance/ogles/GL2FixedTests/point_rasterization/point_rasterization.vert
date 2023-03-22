
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


attribute vec4 gtf_Color;
attribute vec4 gtf_Vertex;
uniform mat4 gtf_ModelViewProjectionMatrix;
uniform float gtf_PointSize;
varying vec4 color;

void main (void)
{
	color = gtf_Color;
	gl_Position = gtf_ModelViewProjectionMatrix * gtf_Vertex;
	gl_PointSize = gtf_PointSize;
}
