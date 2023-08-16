#ifndef _AUTOQ_COMPLEX_PARSER_HH_
#define _AUTOQ_COMPLEX_PARSER_HH_

#include <iostream>
#include <string>
#include <cctype>
#include <cmath>
#include <boost/rational.hpp>
#include "autoq/complex/complex.hh"

using AUTOQ::Complex::Complex;

class ComplexParser {
public:
    ComplexParser(const std::string& input) : input_(input), index_(0) {}

    Complex parse() {
        skipWhitespace();
        Complex result = parseExpression();
        return result;
    }

private:
    const std::string& input_;
    size_t index_;

    void skipWhitespace() {
        while (index_ < input_.length() && std::isspace(input_[index_])) {
            index_++;
        }
    }

    Complex parseExpression() {
        Complex left = parseTerm();
        while (index_ < input_.length()) {
            skipWhitespace();
            char op = input_[index_];
            if (op == '+' || op == '-') {
                index_++;
                Complex right = parseTerm();
                if (op == '+') {
                    left = left + right;
                } else {
                    left = left - right;
                }
            } else {
                break;
            }
        }
        return left;
    }

    Complex parseTerm() {
        Complex left = parseFactor();
        while (index_ < input_.length()) {
            skipWhitespace();
            char op = input_[index_];
            if (op == '*' || op == '/') {
                index_++;
                Complex right = parseFactor();
                if (op == '*') {
                    left = left * right;
                } else {
                    if (right != Complex(0)) {
                        // assert(right.imag() == 0);
                        // assert(right.real().denominator() == 1);
                        auto n = right.toInt(); //.numerator();
                        while (n > 1) {
                            assert(n % 2 == 0); // Assume the denominator is a power of two.
                            left.divide_by_the_square_root_of_two(2);
                            n /= 2;
                        }
                    } else {
                        throw std::runtime_error("Division by zero");
                    }
                }
            } else {
                break;
            }
        }
        return left;
    }

    Complex fastPower(Complex base, int exponent) {
        assert(exponent >= 0);
        if (exponent == 0) return 1;
        if (exponent % 2 == 0) {
            Complex temp = fastPower(base, exponent / 2);
            return temp * temp;
        } else {
            Complex temp = fastPower(base, (exponent - 1) / 2);
            return base * temp * temp;
        }
    }
    Complex parseFactor() {
        Complex base = parsePrimary();
        if (index_ < input_.length() && input_[index_] == '^') {
            index_++;
            Complex exponent = parseFactor();
            // assert(exponent.imag() == 0); // Assume the exponent must be an integer.
            // assert(exponent.real().denominator() == 1);
            return fastPower(base, static_cast<int>(exponent.toInt())); //.numerator()));
        }
        return base;
    }

    template <typename T>
    boost::rational<boost::multiprecision::cpp_int> others_to_rational(const T &in) {
        if constexpr(std::is_same_v<T, boost::rational<boost::multiprecision::cpp_int>>)
            return in;
        else // temporary conversion for double, may need additional enhancements
            return boost::rational<boost::multiprecision::cpp_int>(in * 1000000, 1000000);
    }
    Complex parsePrimary() {
        skipWhitespace();
        if (index_ >= input_.length()) {
            throw std::runtime_error("Unexpected end of input");
        }
        if (input_[index_] == '(') {
            index_++;
            Complex result = parseExpression();
            if (index_ >= input_.length() || input_[index_] != ')') {
                throw std::runtime_error("Missing closing parenthesis");
            }
            index_++;
            return result;
        } else if (std::isalpha(input_[index_])) {
            size_t start = index_;
            while (index_ < input_.length() && (std::isalpha(input_[index_]) || std::isdigit(input_[index_]) || input_[index_] == '.')) {
                index_++;
            }
            std::string function = input_.substr(start, index_ - start);
            if (function == "A") {
                if (index_ < input_.length() && input_[index_] == '(') {
                    index_++;
                    skipWhitespace();
                    if (index_ >= input_.length() || (!std::isdigit(input_[index_]) && input_[index_] != '-')) {
                        throw std::runtime_error("Invalid argument for A function");
                    }
                    auto x = parseExpression();
                    if (index_ >= input_.length() || input_[index_] != ')') {
                        throw std::runtime_error("Missing closing parenthesis for A function");
                    }
                    index_++;
                    // assert(x.imag() == 0);
                    auto xreal = x.real();
                    return Complex::Angle(others_to_rational(xreal));
                } else {
                    throw std::runtime_error("Invalid syntax for A function");
                }
            } else if (function == "V2") {
                return Complex::sqrt2();
            } else {
                throw std::runtime_error("Unknown function: " + function);
            }
        } else if (std::isdigit(input_[index_]) || input_[index_] == '-') {
            return Complex(parseNumber());
        } else {
            throw std::runtime_error("Unexpected character: " + std::string(1, input_[index_]));
        }
    }

    boost::rational<boost::multiprecision::cpp_int> parseNumber() {
        size_t start = index_;
        while (index_ < input_.length() && (std::isdigit(input_[index_]) || input_[index_] == '.' || input_[index_] == '-')) {
            index_++;
        }
        std::string numStr = input_.substr(start, index_ - start);
        int d = 0;
        for (int i=numStr.length()-1; i>=0; i--) {
            if (numStr.at(i) == '.') {
                d = numStr.length()-1 - i;
                numStr.erase(i, 1);
                break; // assume only one decimal point
            }
        }
        if (numStr.at(0) == '-') {
            while (numStr.at(1) == '0' && numStr.length() >= 3)
                numStr.erase(1, 1);
        } else {
            while (numStr.at(0) == '0' && numStr.length() >= 2)
                numStr.erase(0, 1);
        }
        return boost::rational<boost::multiprecision::cpp_int>(boost::multiprecision::cpp_int(numStr), boost::multiprecision::pow(boost::multiprecision::cpp_int(10), d));
    }
};

#endif