float blendColorBurn(float base, float blend) {
	return (blend==0.0)?blend:max((1.0-((1.0-base)/blend)),0.0);
}

float blendColorBurn(float base, float blend, float opacity) {
	return mix(base, blendColorBurn(base, blend), opacity);
}

vec3 blendColorBurn(vec3 base, vec3 blend) {
	return vec3(blendColorBurn(base.r,blend.r),blendColorBurn(base.g,blend.g),blendColorBurn(base.b,blend.b));
}

vec3 blendColorBurn(vec3 base, vec3 blend, float opacity) {
	return mix(base, blendColorBurn(base, blend), opacity);
}

#pragma glslify: export(blendColorBurn)