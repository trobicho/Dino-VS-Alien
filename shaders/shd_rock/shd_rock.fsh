//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float lifetime;

void main()
{
	vec4 color;
	color=v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	color=vec4(color.xyz*lifetime,color.w);
	//a.w=1.0;
    gl_FragColor = color;
}
