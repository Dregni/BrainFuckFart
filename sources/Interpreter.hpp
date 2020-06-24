#pragma once

#include <string>
#include <vector>

class Interpreter
{
    public:
        Interpreter();
        Interpreter(const std::string & filename);
        void init(const std::string & filename);
        void loop();
        void dump();
        void dump(unsigned char tmp);
    
    private:
        std::vector<char> _commands;
        std::vector<unsigned char> _memory;
};