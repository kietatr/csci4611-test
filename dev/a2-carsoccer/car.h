#ifndef CAR_H_
#define CAR_H_

#include <mingfx.h>

// Small data structure for a car
class Car {
public:
    Point3 position;
    float angle;
    float speed, turn;
    Vector3 size;
    float collisionRadius;
    float speedMin, speedMax, turnMax;
    float acceleration, turnRate;
    Vector3 velocity() {
        return Vector3(-sin(angle),0,-cos(angle))*speed;
    }
};

#endif 
