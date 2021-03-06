#include <iostream>
#include <string>

using namespace std;

#include "planet.hpp"

void drawLine(unsigned len, char c);
void definePlanet();

Planet a;

int main()
{
  //program start message
  cout << endl;
  drawLine(40, '=');
  cout << "Create your own planet!\n";
  drawLine(40, '=');
  //input values
  definePlanet();
  //print the values
  cout << endl;
  a.printParameters();
  //program end message
  drawLine(40, '=');
  cout << "End of the program.\n";
  drawLine(40, '=');
  cout << endl;
  return 0;
}

void drawLine(unsigned len, char c)
{
  for(int i=0;i<=len;i++)
    cout << c;
  cout << endl;
}

void definePlanet()
{
  string pName;
  double pMass, pRadius;
  cout << "Enter a name for your planet: ";
  cin >> pName;
  a.setName(pName);
  cout << "Enter mass for your planet: ";
  cin >> pMass;
  a.setMass(pMass);
  cout << "Enter radius for your planet: ";
  cin >> pRadius;
  a.setRadius(pRadius);
}
