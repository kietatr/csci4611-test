#define _USE_MATH_DEFINES
#include "car_soccer.h"
#include "config.h"


CarSoccer::CarSoccer() : GraphicsApp(1024,768, "Car Soccer") {
    // Define a search path for finding data files (images and shaders)
    searchPath_.push_back(".");
    searchPath_.push_back("./data");
    searchPath_.push_back(DATA_DIR_INSTALL);
    searchPath_.push_back(DATA_DIR_BUILD);

    // Initial values for the simulation
    car_.size = Vector3(3, 2, 4);
    car_.collisionRadius = 2.5;
    reset_car();
    car_.speedMin = -20;
    car_.speedMax = 30;
    car_.turnMax = 0.1;
    car_.acceleration = 150;
    car_.turnRate = 0.5;
    ball_.radius = 2.6;
    launch_ball();
    gravity_ = Vector3(0,-20,0);
    bounce_ = 0.8;
}

CarSoccer::~CarSoccer() {
}



Vector3 CarSoccer::joystick_direction() {
    Vector3 dir;
    if (IsKeyDown(GLFW_KEY_LEFT))
        dir[0]--;
    if (IsKeyDown(GLFW_KEY_RIGHT))
        dir[0]++;
    if (IsKeyDown(GLFW_KEY_UP))
        dir[1]++;
    if (IsKeyDown(GLFW_KEY_DOWN))
        dir[1]--;
    return dir;
}


void CarSoccer::reset_car() {
    car_.position = Point3(0, car_.size[1]/2, 45);
    car_.angle = 0;
    car_.speed = 0;
    car_.turn = 0;
}


void CarSoccer::launch_ball() {
    ball_.position = Point3(0,ball_.radius,0);
    float a = M_PI*rand()/RAND_MAX;
    ball_.velocity = Vector3(25*cos(a),10,25*sin(a));
}


void CarSoccer::OnSpecialKeyDown(int key, int scancode, int modifiers) {
    if (key == GLFW_KEY_SPACE) {
        launch_ball();
    }
}


void CarSoccer::UpdateSimulation(double timeStep) {
    // An oversimplified dynamics model for the car
    Vector3 dir = joystick_direction();
    float targetSpeed = dir[1]==1 ? car_.speedMax : dir[1]==-1 ? car_.speedMin : 0;
    car_.speed = std::min(std::max(targetSpeed,
                                   car_.speed - car_.acceleration*(float)timeStep),
                          car_.speed + car_.acceleration*(float)timeStep);
    float targetTurn = dir[0]==1 ? -car_.turnMax : dir[0]==-1 ? car_.turnMax : 0;
    car_.turn = std::min(std::max(targetTurn,
                                  car_.turn-car_.turnRate*(float)timeStep),
                         car_.turn+car_.turnRate*(float)timeStep);
    car_.position = car_.position + car_.velocity()*timeStep;
    car_.angle += car_.turn*car_.speed*timeStep;

    // Handle ball/wall, car/wall, and ball/car collisions here
    Vector3 field0(-40,0,-50), field1(40,35,50);
    for (int i = 0; i < 3; i++) {
        if (car_.position[i] < field0[i] + car_.size[i]/2 || car_.position[i] > field1[i] - car_.size[i]/2) {
            car_.position[i] = GfxMath::Clamp(car_.position[i], field0[i] + car_.size[i]/2, field1[i] - car_.size[i]/2);
        }
    }

    ball_.velocity = ball_.velocity + gravity_*timeStep;
    ball_.position = ball_.position + ball_.velocity*timeStep;

    // check goal
    if ((ball_.position[2] < field0[2] + ball_.radius || ball_.position[2] > field1[2] - ball_.radius) &&
        ball_.position[0] >= -10 && ball_.position[0] <= 10 && ball_.position[1] <= 10) {
        reset_car();
        launch_ball();
    }

    for (int i = 0; i < 3; i++) {
        if (ball_.position[i] < field0[i] + ball_.radius || ball_.position[i] > field1[i] - ball_.radius) {
            ball_.position[i] = GfxMath::Clamp(ball_.position[i], field0[i] + ball_.radius, field1[i] - ball_.radius);
            ball_.velocity[i] = -bounce_*ball_.velocity[i];
        }
    }

    // car-ball collision
    Vector3 relDiff = ball_.position - car_.position;
    Vector3 relVel = ball_.velocity - car_.velocity();
    float distance = relDiff.Length();
    if (distance < ball_.radius + car_.collisionRadius) {
        Vector3 normal = relDiff.ToUnit();
        if (relVel.Dot(normal) < 0) {
            relVel = relVel - (1+bounce_)*normal*relVel.Dot(normal);
            ball_.velocity = car_.velocity() + relVel;
        }
    }
}


void CarSoccer::InitOpenGL() {
    // Set up the camera in a good position to see the entire field
    projMatrix_ = Matrix4::Perspective(60, aspect_ratio(), 1, 1000);
    modelMatrix_ = Matrix4::LookAt(Point3(0,60,70), Point3(0,0,10), Vector3(0,1,0));
    glClearColor(0.8,0.8,0.8, 1);

    fieldTex_.InitFromFile(Platform::FindFile("pitch.png", searchPath_));
    crowdTex_.InitFromFile(Platform::FindFile("crowd.png", searchPath_));
}


void CarSoccer::DrawUsingOpenGL() {
    // Draw the crowd as a fullscreen background image
    quickShapes_.DrawFullscreenTexture(Color(1,1,1), crowdTex_);

    // Draw the field
    Color col(16.0/255.0, 46.0/255.0, 9.0/255.0);
    Matrix4 M = Matrix4::Translation(Vector3(0,-0.201,0)) * Matrix4::Scale(Vector3(50, 1, 60));
    quickShapes_.DrawSquare(modelMatrix_ * M, viewMatrix_, projMatrix_, col);
    M = Matrix4::Translation(Vector3(0,-0.2,0)) * Matrix4::Scale(Vector3(40, 1, 50));
    quickShapes_.DrawSquare(modelMatrix_ * M, viewMatrix_, projMatrix_, Color(1,1,1), fieldTex_);


    // Draw the borders of the playing area
    std::vector<Point3> top, bottom, posts;
    Color bcol(0.7, 0.7, 0.7);

    // (top) +Y
    top.push_back(Point3(40.0f, 35.0f, -50.0f));
    top.push_back(Point3(-40.0f, 35.0f, -50.0f));
    top.push_back(Point3(-40.0f, 35.0f, 50.0f));
    top.push_back(Point3(40.0f, 35.0f, 50.0f));
    quickShapes_.DrawLines(modelMatrix_, viewMatrix_, projMatrix_, bcol, top, QuickShapes::LinesType::LINE_LOOP, 0.1);

    // (bottom) Y=0
    bottom.push_back(Point3(40.0f, 0.0f, -50.0f));
    bottom.push_back(Point3(-40.0f, 0.0f, -50.0f));
    bottom.push_back(Point3(-40.0f, 0.0f, 50.0f));
    bottom.push_back(Point3(40.0f, 0.0f, 50.0f));
    quickShapes_.DrawLines(modelMatrix_, viewMatrix_, projMatrix_, bcol, bottom, QuickShapes::LinesType::LINE_LOOP, 0.1);

    // (connecting posts)
    posts.push_back(Point3(40.0f, 35.0f, 50.0f));
    posts.push_back(Point3(40.0f, 0.0f, 50.0f));

    posts.push_back(Point3(-40.0f, 35.0f, 50.0f));
    posts.push_back(Point3(-40.0f, 0.0f, 50.0f));

    posts.push_back(Point3(-40.0f, 35.0f, -50.0f));
    posts.push_back(Point3(-40.0f, 0.0f, -50.0f));

    posts.push_back(Point3(40.0f, 35.0f, -50.0f));
    posts.push_back(Point3(40.0f, 0.0f, -50.0f));
    quickShapes_.DrawLines(modelMatrix_, viewMatrix_, projMatrix_, bcol, posts, QuickShapes::LinesType::LINES, 0.1);


    // Draw grids for the goals
    std::vector<Point3> farGoal, nearGoal;
    for (int i = 0; i <= 10; i++) {
        farGoal.push_back(Point3(-10, i, -50));
        farGoal.push_back(Point3( 10, i, -50));
        nearGoal.push_back(Point3(-10, i, 50));
        nearGoal.push_back(Point3( 10, i, 50));
    }
    for (int i = -10; i <= 10; i++) {
        farGoal.push_back(Point3(i, 0, -50));
        farGoal.push_back(Point3(i, 10, -50));
        nearGoal.push_back(Point3(i, 0, 50));
        nearGoal.push_back(Point3(i, 10, 50));
    }
    quickShapes_.DrawLines(modelMatrix_, viewMatrix_, projMatrix_, Color(0.2, 0.6, 0.8), farGoal, QuickShapes::LinesType::LINES, 0.1);
    quickShapes_.DrawLines(modelMatrix_, viewMatrix_, projMatrix_, Color(0.8, 0.6, 0.2), nearGoal, QuickShapes::LinesType::LINES, 0.1);


    // Draw the car
    Color carcol(0.8, 0.2, 0.2);
    Matrix4 Mcar =
    Matrix4::Translation(car_.position - Point3(0,0,0)) *
    Matrix4::RotationY(car_.angle) *
    Matrix4::Scale(car_.size) *
    Matrix4::Scale(Vector3(0.5,0.5,0.5));
    quickShapes_.DrawCube(modelMatrix_ * Mcar, viewMatrix_, projMatrix_, carcol);


    // Draw the ball
    Color ballcol(1,1,1);
    Matrix4 Mball =
    Matrix4::Translation(ball_.position - Point3(0,0,0)) *
    Matrix4::Scale(Vector3(ball_.radius, ball_.radius, ball_.radius));
    quickShapes_.DrawSphere(modelMatrix_ * Mball, viewMatrix_, projMatrix_, ballcol);


    // Draw the ball's shadow -- this is a bit of a hack, scaling Y by zero
    // flattens the sphere into a pancake, which we then draw just a bit
    // above the ground plane.
    Color shadowcol(0.2,0.4,0.15);
    Matrix4 Mshadow =
    Matrix4::Translation(Vector3(ball_.position[0], -0.1, ball_.position[2])) *
    Matrix4::Scale(Vector3(ball_.radius, 0, ball_.radius)) *
    Matrix4::RotationX(90);
    quickShapes_.DrawSphere(modelMatrix_ * Mshadow, viewMatrix_, projMatrix_, shadowcol);
} 
