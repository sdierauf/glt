float blendReflect(float base, float blend) {
	return (blend==1.0)?blend:min(base*base/(1.0-blend),1.0);
}

float blendReflect(float base, float blend, float opacity) {
	return mix(base, blendReflect(base, blend), opacity);
}

vec3 blendReflect(vec3 base, vec3 blend) {
	return vec3(blendReflect(base.r,blend.r),blendReflect(base.g,blend.g),blendReflect(base.b,blend.b));
}

vec3 blendReflect(vec3 base, vec3 blend, float opacity) {
	return mix(base, blendReflect(base, blend), opacity);
}

#pragma glslify: export(blendReflect)