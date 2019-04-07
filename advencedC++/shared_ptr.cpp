#include <iostream>
#include <memory>
 
struct Foo
{
   Foo(int in) : a(in) {}
   void print() const
   {
      std::cout << "a = " << a << '\n';
   }
   int a;
};
 
class A
{
public:
    void print()const 
    {
        if (F != NULL)
        {
            (*F).print();
            F->print();
        }
    }
    
    bool set(const std::shared_ptr<Foo> f)
    {
        F = f;
        std::cout << "set\n";
        return true;
    }
private:
    std::shared_ptr<Foo> F;
};
 
int main()
{
    A a;    
    a.print();
    auto ptr = std::make_shared<Foo>(10);
   
    if(a.set(ptr))
    {
        a.print();
    }
//   ptr->print();
//   (*ptr).print();
}
