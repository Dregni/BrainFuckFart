#include "Interpreter.hpp"

#include "tools.hpp"

#include <fstream>
#include <exception>

#include <cstdio>
#include <cstdlib>
#include <ctime>

Interpreter::Interpreter()
{}

Interpreter::Interpreter(const std::string & filename)
{
    init(filename);
}

void Interpreter::init(const std::string & filename)
{
    std::ifstream file(filename);

    if (!file.eof() && !file.fail())
    {
        file.seekg(0, std::ios_base::end);
        std::streampos fileSize = file.tellg();
        _commands.resize(fileSize);

        file.seekg(0, std::ios_base::beg);
        file.read(&_commands[0], fileSize);
    }
    _memory.push_back(0);
    std::srand(std::time(NULL));
}

void Interpreter::loop()
{
    int n = 0;
    unsigned char tmp = 0;
    int lvl = 0;

    for (int i = 0; i < _commands.size(); ++i)
    {
        switch (_commands[i])
        {
            case '>':
                n += 1;
                if (_memory.size() < n + 1)
                    _memory.push_back(0);
                break;
            case '<':
                n -= 1;
                if (n < 0)
                    throw std::runtime_error("Can't allow memory below 0");
                break;
            case '+':
                if (_memory[n] == UINT8_MAX)
                    throw std::runtime_error("UInt_8 overflow");
                _memory[n] += 1;
                break;
            case '-':
                if (_memory[n] == 0)
                    throw std::runtime_error("UInt_8 underflow");
                _memory[n] -= 1;
                break;
            case '.':
                std::cout << _memory[n];
                break;
            case ',':
                _memory[n] = std::getc(stdin);
                break;
            case ';':
                int in;
                std::cin >> in;
                if (in > UINT8_MAX)
                    throw std::runtime_error("number too big");
                _memory[n] = in;
                break;
            case ':':
                std::cout << ":" << +_memory[n] << ":";
            case '[':
                break;
            case ']':
                if (_memory[n] == 0)
                    break;
                while (i > 0 && _commands[i] != '[')
                {
                    --i;
                    if (_commands[i] == ']')
                        ++lvl;
                    else if (_commands[i] == '[' && lvl > 0)
                    {
                        --lvl;
                        --i;
                    }
                }
                if (i <= 0 && _commands[i] != '[')
                    throw std::runtime_error("No matching opening bracket");
                break;
            case '(':
                if (_memory[n] == 0)
                    break;
                while (i < _commands.size() && _commands[i] != ')')
                    ++i;
                if (i >= _commands.size() && _commands[i] != ')')
                    throw std::runtime_error("No matching closing paren");
                break;
            case ')':
                break;
            case '^':
                tmp = _memory[n];
                break;
            case 'v':
                _memory[n] = tmp;
                break;
            case '|':
                if (_memory[n] != 0)
                    break;
                while (i < _commands.size() && _commands[i] != ']')
                    ++i;
                break;
            case '?':
                _memory[n] = std::rand() % UINT8_MAX;
                break;
            case '!':
                std::cout << "!" << n << "!";
                dump(tmp);
                break;
            case '*':
                n = _memory[n];
                break;
            case '/':
                ++i;
                while (i < _commands.size() && _commands[i] != '/')
                    ++i;
                if (i <= _commands.size() && _commands[i] != '/')
                    throw std::runtime_error("no matching '/' to close comment");
                break;
            default:
                break;
        }
    }
}

static void data_dump(unsigned char * str, int n)
{
    std::cout << "Memory : {";
    for (int i = 0; i < n; ++i)
    {
        if (str[i] >= 'a' && str[i] <= 'z' || str[i] > 'A' && str[i] < 'Z')
            std::cout << (str[i]);
        else
            std::cout << (+str[i]);
        std::cout << '|';
    }
    std::cout << "}" << std::endl;
}

void Interpreter::dump()
{
    data_dump(_memory.data(), _memory.size());
    //COUT("Source : {" << _commands.data() << "}");
}

void Interpreter::dump(unsigned char tmp)
{
    data_dump(_memory.data(), _memory.size());
    COUT("Temp : {" << +tmp << "}");
    //COUT("Source : {" << _commands.data() << "}");
}