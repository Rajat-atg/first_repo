#!/bin/bash

Addition() {
    echo "Enter two numbers: "
    read a b
    echo "Result: $((a + b))"
    }

Subtraction() {
    echo "Enter two numbers: "
    read a b
    echo "Result: $((a - b))"
    }

Multiplication() {
    echo "Enter two numbers: "
    read a b
    echo "Result: $((a * b))"
    }

Division() {
    echo "Enter two numbers: "
    read a b
    if [ $b -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        echo "Result: $((a / b))"
    fi
    }

display_menu() {
    echo "******** calculator ********"
    echo "0. Exit"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    }

# Main Script
while true 
do
    display_menu
    echo "Enter your choice: "
    read choice
    case $choice in
        0) echo "Closing the Calculator"
            break
            ;;
        1) Addition ;;
        2) Subtraction ;;
        3) Multiplication ;;
        4) Division ;;
        *) echo "Invalid choice" ;;
    esac
done