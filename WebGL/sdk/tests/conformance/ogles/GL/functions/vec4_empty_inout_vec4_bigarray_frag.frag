
/*
Copyright (c) 2019 The Khronos Group Inc.
Use of this source code is governed by an MIT-style license that can be
found in the LICENSE.txt file.
*/


#ifdef GL_ES
precision mediump float;
#endif
varying vec4 color;

// Function declarations.
vec4 function(inout vec4 par[10]);
bool is_all(const in vec4 par, const in float value);
bool is_all(const in vec4 array[10], const in vec4 value);
void set_all(out vec4 array[10], const in vec4 value);

void main (void)
{
	vec4 par[10];
	vec4 ret = vec4(0.0, 0.0, 0.0, 0.0);

	float gray = 0.0;

	// Initialize the entire array to 1.0.
	set_all(par, vec4(1.0, 1.0, 1.0, 1.0));

	ret = function(par);

	// The parameter should be changed by the function and the function should return 1.0.
	if(is_all(par, vec4(0.0, 0.0, 0.0, 0.0)) && is_all(ret, 1.0))
	{
		gray = 1.0;
	}

	gl_FragColor = vec4(gray, gray, gray, 1.0);
}

// Function definitions.
vec4 function(inout vec4 par[10])
{
	// Return the value of the array.
	if(is_all(par, vec4(1.0, 1.0, 1.0, 1.0)))
	{
		// Test parameter qualifier (default is "in").
		set_all(par, vec4(0.0, 0.0, 0.0, 0.0));

		return vec4(1.0, 1.0, 1.0, 1.0);
	}
	else
		return vec4(0.0, 0.0, 0.0, 0.0);
}

bool is_all(const in vec4 par, const in float value)
{
	bool ret = true;

	if(par[0] != value)
		ret = false;
	if(par[1] != value)
		ret = false;
	if(par[2] != value)
		ret = false;
	if(par[3] != value)
		ret = false;

	return ret;
}

bool is_all(const in vec4 array[10], const in vec4 value)
{
	bool ret = true;

	if(array[0] != value)
		ret = false;
	if(array[1] != value)
		ret = false;
	if(array[2] != value)
		ret = false;
	if(array[3] != value)
		ret = false;
	if(array[4] != value)
		ret = false;
	if(array[5] != value)
		ret = false;
	if(array[6] != value)
		ret = false;
	if(array[7] != value)
		ret = false;
	if(array[8] != value)
		ret = false;
	if(array[9] != value)
		ret = false;

	return ret;
}

void set_all(out vec4 array[10], const in vec4 value)
{
	array[0] = value;
	array[1] = value;
	array[2] = value;
	array[3] = value;
	array[4] = value;
	array[5] = value;
	array[6] = value;
	array[7] = value;
	array[8] = value;
	array[9] = value;
}
