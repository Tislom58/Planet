#include <iostream>
#include <string>

using namespace std;

#include "planet.hpp"

Planet::Planet()
{
  name = "";
  mass = 0;
  radius = 0;
}

Planet::Planet(string n, double m, double r)
{
  name = n;
  mass = m;
  radius = r;
}

void Planet::setName(string n)
{
  name = n;
}

void Planet::getName()
{
  cout << name;
}

void Planet::setMass(double m)
{
  mass = m;
}

double Planet::getMass()
{
  return mass;
}

void Planet::setRadius(double r)
{
  radius = r;
}

double Planet::getRadius()
{
  return radius;
}

void Planet::printParameters()
{
  cout << "The name of your planet is: " << name << endl;
  cout << "The mass of your planet is: " << mass << endl;
  cout << "The radius of your planet is: " << radius << endl;
}

Planet::~Planet(){}
