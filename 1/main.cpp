#include <iostream>

consteval int getValue() {
    return 42;
}

int main() {
    constexpr int value = getValue();
    std::cout << "Value: " << value << std::endl;
    return 0;
}