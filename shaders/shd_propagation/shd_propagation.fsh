//
// Simple passthrough fragment shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D s_lavaObstacle;
uniform sampler2D s_lavaPropagation;

uniform vec2 u_vTextCoord;
uniform vec2 u_vTextSize;

float sample_propagation(vec2 tc)
{
	vec4 sample = texture2D(s_lavaPropagation, tc);
	return (min(sample.r, sample.a));
}

float sample_obstacle(vec2 tc)
{
	vec4 sample = texture2D(s_lavaObstacle, tc);
	return (max(sample.r, 1.0 - sample.a));
}

vec4 propagate()
{
	float propagation = sample_propagation(v_vTexcoord);
	float obstacle = sample_obstacle(v_vTexcoord);
	float level = propagation;
	
	if (obstacle < 0.999) {
		float neighUp = sample_propagation(v_vTexcoord + vec2(0.0, -1.0 / u_vTextSize.y));
		float neighRight = sample_propagation(v_vTexcoord + vec2(1.0 / u_vTextSize.x, 0.0));
		float neighLeft = sample_propagation(v_vTexcoord + vec2(-1.0 / u_vTextSize.x, 0.0));
		
		//level = max(((neighUp + neighRight), neighLeft) * (propagationColor.r + obstacleColor.r), propagationColor.r);
		level = min(neighUp + neighRight + neighLeft, 1.0);
		propagation += ((level - propagation) / 5.0) * (1.0 - obstacle);
		propagation = propagation;
	}
	return (vec4(propagation));
}

void main()
{
	vec4 sampleColor = propagate();
	gl_FragColor = sampleColor;
}