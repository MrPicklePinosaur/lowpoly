
#include "headers/light.h"

Light::Light(glm::vec3 position, glm::vec3 color, float intensity)
    : position(position), color(color), intensity(intensity)
{
}

Light::~Light()
{
}
