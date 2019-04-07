#include "ClosedMap.h"

//standad librarries
#include <iostream>

//ctors
ClosedMap::ClosedMap()
: lastNode(0),
isEmpty(true)
{
    std::cout << "ClosedMap ctreated!\n";
}

//dtors
ClosedMap::~ClosedMap()
{
    std::cout << "ClosedMap destroyed\n";
}

