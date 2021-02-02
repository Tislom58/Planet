#ifndef PLANET_H
#define PLANET_H

#include <string>

using namespace std;

class Planet
{
private:
  string name;
  double mass;
  double radius;
public:
  Planet();
  Planet(string n, double m, double r);
  void setName(string n);
  void getName();
  void setMass(double m);
  double getMass();
  void setRadius(double r);
  double getRadius();
  void printParameters();
  ~Planet();
};

#endif
