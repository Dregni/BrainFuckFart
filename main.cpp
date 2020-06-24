#include "Interpreter.hpp"
#include "tools.hpp"

int main(int ac, char ** av)
{
    Interpreter thing;
    if (ac != 2)
        return 1;
    thing.init(av[1]);
    try
    {
        thing.loop();
    }
    catch(const std::runtime_error & e)
    {
        std::cerr << "Error : " << e.what() << '\n';
    }
    return 0;
}