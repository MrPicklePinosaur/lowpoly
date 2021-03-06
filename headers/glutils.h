#ifndef __GL_UTILS_H__
#define __GL_UTILS_H__

#include <signal.h>

#define ASSERT(x) if (!(x)) raise(SIGTRAP)
#define glCall(f) glPurgeErrors();\
    f;\
    if (glRetrieveErrors(__FILE__, __LINE__)) raise(SIGTRAP)

unsigned int glSizeOfType(GLenum type);
void glPurgeErrors(void);
bool glRetrieveErrors(const char* file, int line_number);

#endif // __GL_UTILS_H__
