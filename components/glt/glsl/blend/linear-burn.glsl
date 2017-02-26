float blendLinearBurn(float base, float blend) {
	// Note : Same implementation as BlendSubtractf
	return max(base+blend-1.0,0.0);
}

float blendLinearBurn(float base, float blend, float opacity) {
	return mix(base, blendLinearBurn(base, blend), opacity);
}

vec3 blendLinearBurn(vec3 base, vec3 blend) {
	// Note : Same implementation as BlendSubtract
	return max(base+blend-vec3(1.0),vec3(0.0));
}

vec3 blendLinearBurn(vec3 base, vec3 blend, float opacity) {
	return mix(base, blendLinearBurn(base, blend), opacity);
}

#pragma glslify: export(blendLinearBurn)