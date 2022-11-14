//
// Simple passthrough fragment shader
//


uniform sampler2D s_lavaPropagation;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 sampleColor = texture2D(s_lavaPropagation, v_vTexcoord);
    vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 finalColor = /*baseColor * */ sampleColor;
	//finalColor.w = 1.0;
	gl_FragColor = finalColor;
}
