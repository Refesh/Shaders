#ifdef GL_ES
precision mediump float;
#endif

#define PI 3.14159

uniform vec2 u_resolution;
uniform float u_time;

float scale = 5.0;

mat2 rotate2d(float _angle){
    return mat2(cos(_angle),sin(_angle),
                sin(_angle),-cos(_angle));
}

void main() {
	vec2 st = gl_FragCoord.xy/u_resolution;
    vec3 color = vec3(0.0);
    st = rotate2d( sin(u_time/30)*PI ) * st;
    
    float off = sin(u_time);
    if (sign(off)>0.)
    {
        if ( floor(mod((st.x -  st.y)*scale,2)) == 1.){
    		st.y += off*0.2;
		st.x += off*0.2;
    }else{
	st.y -= off*0.2;
	st.x -= off*0.2;
    }
    }
    else
    {
        if ( floor(mod((st.x +  st.y)*scale,2)) == 1.){
    		st.y -= off*0.2;
		st.x += off*0.2;
    	}else{
		st.y += off*0.2;
		st.x -= off*0.2;
   	}
    }
    
    st = fract(st*scale); 

	float pct = max(-sin(u_time),sin(u_time))+0.2;
	float a = step(st.x, 0.425*pct);
	float b = step(st.y, 0.425*pct);
	float rectangle = a * b;
    color = vec3(rectangle);

    gl_FragColor = vec4(color*vec3(1.0,0.9,0.0),1.0);
}