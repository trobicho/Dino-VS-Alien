//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define PI	3.14159

vec2	curvature = vec2(5.0, 5.0);
vec2	screenResolution = vec2(500, 100);
vec2	scanlineOpacity = vec2(0.2, 0.1);
float	vignetteOpacity = 0.8;
vec2	roundness = vec2(0.1, 1.5);
float	brightness = 1.3;
/*
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) / 2.0;
}
*/
vec2 curveRemapUV(vec2 uv)
{
    // as we near the edge of our screen apply greater distortion using a cubic function
	uv = uv * 2.0 - 1.0;
    vec2 offset = abs(uv.yx) / vec2(curvature.x, curvature.y);
    uv = uv + uv * offset * offset;
    uv = uv * 0.5 + 0.5;
    return uv;
}

vec4 scanlineIntensity(float uv, float resolution, float opacity)
{
	float intensity = sin(uv * resolution * PI * 2.0);
	intensity = ((0.5 * intensity) + 0.5) * 0.9 + 0.1;
	return vec4(vec3(pow(intensity, opacity)), 1.0);
}

vec4 vignette(vec2 uv)
{
	float intensity = uv.x * uv.y * (1.0 - uv.x) * (1.0 - uv.y);
	return vec4(vec3(clamp(pow((screenResolution.x / 4.0) * intensity, vignetteOpacity), 0.0, 1.0)), 1.0);
}

void main(void) 
{
    vec2 remappedUV = curveRemapUV(v_vTexcoord);
    vec4 baseColor = v_vColour * texture2D(gm_BaseTexture, remappedUV);

	if (remappedUV.x < 0.0 || remappedUV.y < 0.0 || remappedUV.x > 1.0 || remappedUV.y > 1.0 ) {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
    } else {
		baseColor *= scanlineIntensity(remappedUV.x, screenResolution.x, scanlineOpacity.x);
		baseColor *= scanlineIntensity(remappedUV.y, screenResolution.y, scanlineOpacity.y);
		baseColor *= vignette(remappedUV);
		baseColor *= vec4(vec3(brightness), 1.0);
		
		//baseColor = scanlineIntensity(remappedUV.x, screenResolution.x, scanlineOpacity.x);
        gl_FragColor = baseColor;
    }
}