uniform float uTime;
varying vec2 vUv;

float N21(vec2 p){
    return fract(sin(p.x * 100.0 + p.y * 985.0) * 5647.0);
}

void main(){

    float n = N21(vUv);

    vec2 lv = fract(vUv * 4.0);

    // vec2 id = floor(vUv * 4.0);

    vec3 rgb = vec3(n);
    rgb.rg = lv;
    gl_FragColor = vec4(rgb, 1.0);
}