#ifndef  __CLOSEDMAP_H
#define  __CLOSEDMAP_H

//standardLibraries
#include <map>
#include <string>

struct node
{
    std::string data;
    node* prev = 0;
    node* next = 0;
};

class ClosedMap
{
public:
    //ctors
    ClosedMap();
    //dtors
    ~ClosedMap();

    //cpCtor
private:
    node* lastNode;
    bool isEmpty;
    std::map<int, node> map;

};

#endif //  __CLOSEDMAP_H
