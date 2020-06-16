//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    vec2 tex = v_vTexcoord;
    tex.y = 1.0 - tex.y;
    vec4 color = texture2D( gm_BaseTexture, tex );
    color.g = 0.0;
    color.b = 0.0;
    
    gl_FragColor = color;
}
