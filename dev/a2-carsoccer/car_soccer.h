#ifndef CAR_SOCCER_H_
#define CAR_SOCCER_H_

#include <mingfx.h>
using namespace mingfx;

#include "ball.h"
#include "car.h"


// The main class for the Car Soccer application
class CarSoccer : public GraphicsApp {
public:
    CarSoccer();
    virtual ~CarSoccer();


    void OnSpecialKeyDown(int key, int scancode, int modifiers);

    void UpdateSimulation(double dt);

    void InitOpenGL();

    void DrawUsingOpenGL();


    Vector3 joystick_direction();

    void reset_car();

    void launch_ball();


private:
    // Simulation objects/parameters
    Car car_;
    Ball ball_;
    Vector3 gravity_;
    float bounce_;

    // Support for drawing some simple shapes
    QuickShapes quickShapes_;

    // Images
    Texture2D fieldTex_;
    Texture2D crowdTex_;

    // Control the computer graphics camera
    Matrix4 modelMatrix_;
    Matrix4 viewMatrix_;
    Matrix4 projMatrix_;

    // A list of paths to search for data files (images)
    std::vector<std::string> searchPath_;
};


#endif 
