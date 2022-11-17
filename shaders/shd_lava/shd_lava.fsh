//
// Simple passthrough fragment shader
//


uniform sampler2D s_lavaPropagation;
uniform sampler2D s_lavaGradiant;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 sampleColor = texture2D(s_lavaPropagation, v_vTexcoord);
	vec4 gradiantColor = texture2D(s_lavaGradiant, vec2(min(sampleColor.r / 10.0, 1.0), 0.5));
	if (sampleColor.a > 0.1)
		sampleColor.a = 1.0;
	gradiantColor.a = sampleColor.a;
    vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 finalColor = baseColor;
	if (length(sampleColor.x) >= 0.01)
		finalColor = gradiantColor * sampleColor;
	//finalColor.w = 1.0;
	gl_FragColor = finalColor;
}
