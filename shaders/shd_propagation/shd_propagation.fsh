//
// Simple passthrough fragment shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D s_lavaObstacle;
uniform sampler2D s_lavaPropagation;

uniform vec2 u_vTextCoord;
uniform vec2 u_vTextSize;

vec4 propagate()
{
	vec4 obstacleColor = texture2D(s_lavaObstacle, v_vTexcoord);
	vec2 textCoord = v_vTexcoord + u_vTextCoord;
	vec4 propagationColor = texture2D(s_lavaPropagation, textCoord);
	float level = propagationColor.x;
	return (propagationColor);
	
	if (obstacleColor.x < 0.999) {
		float neighUp = texture2D(s_lavaPropagation, textCoord + vec2(0.0, -1.0 / u_vTextSize.y)).x;
		float neighRight = texture2D(s_lavaPropagation, textCoord + vec2(1.0 / u_vTextSize.x, 0.0)).x;
		float neighLeft = texture2D(s_lavaPropagation, textCoord + vec2(-1.0 / u_vTextSize.x, 0.0)).x;
		
		level = max(((neighUp + neighRight), neighLeft), propagationColor.x) + 0.2;
		//level = propagationColor.x;
	}
	return (vec4(vec3(level), 1.0)) + 0.2;
}

void main()
{
	vec4 sampleColor = propagate();
	gl_FragColor = sampleColor;
}