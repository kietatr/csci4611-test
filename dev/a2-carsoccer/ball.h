#ifndef BALL_H_
#define BALL_H_

#include <mingfx.h>

// Small data structure for a ball
class Ball {
public:
    Point3 position;
    Vector3 velocity;
    float radius;
};

#endif 
