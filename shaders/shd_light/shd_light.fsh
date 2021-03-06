varying vec2 pos; //current pixel position
varying vec4 col;

uniform vec2 u_pos; //light source positon

uniform float zz; //larger zz, larger light
uniform float u_str;
void main(){
	vec2 dis = pos - u_pos;
	float str = 1./(sqrt(dis.x*dis.x + dis.y*dis.y + zz*zz)-zz)*u_str; //strength of light is the inverse distance
    gl_FragColor = col*vec4(vec3(str),1.);
}
