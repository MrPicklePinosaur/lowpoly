#version 300 es
layout(location = 0) in vec3 pos;
layout(location = 1) in vec2 tex_coord;
layout(location = 2) in vec3 normal;

#include assets/shaders/common.shaderh

out mediump vec2 v_TexCoord;
out mediump vec3 v_Normal;
out mediump vec3 v_FragPosition;

uniform MVP u_MVP;

void
main()
{
    gl_Position = u_MVP.projection * u_MVP.view * u_MVP.model * vec4(pos, 1.0);
    v_TexCoord = tex_coord;
    v_Normal = vec3(u_MVP.model * vec4(normal, 0.0));
    v_FragPosition = vec3(u_MVP.model * vec4(pos, 1.0)); // position of each fragment in world space
}
