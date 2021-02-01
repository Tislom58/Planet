#include <iostream>
#include <string>

using namespace std;

#include "planet.h"

void drawLine(unsigned len, char c);

int main()
{
  cout << endl;
  drawLine(40, '=');
  cout << "Create your own planet!\n";
  drawLine(40, '=');
  Planet a("Apollo", 5000, 3800);
  Planet b("Artemis", 10000, 7390);
  cout << endl;
  a.printParameters();
  cout << endl;
  b.printParameters();
  cout << endl;
  return 0;
}

void drawLine(unsigned len, char c)
{
  for(int i=0;i<=len;i++)
    cout << c;
  cout << endl;
}
