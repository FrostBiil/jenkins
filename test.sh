#!/bin/bash

# Simple test file for Jenkins demo
# This script demonstrates basic testing functionality

echo "Running Jenkins demo test..."

# Test 1: Check if current directory exists
if [ -d "." ]; then
    echo "✓ Test 1 PASSED: Current directory exists"
else
    echo "✗ Test 1 FAILED: Current directory does not exist"
    exit 1
fi

# Test 2: Check if README.md exists
if [ -f "README.md" ]; then
    echo "✓ Test 2 PASSED: README.md exists"
else
    echo "✗ Test 2 FAILED: README.md does not exist"
    exit 1
fi

# Test 3: Simple arithmetic test
RESULT=$((2 + 2))
if [ $RESULT -eq 4 ]; then
    echo "✓ Test 3 PASSED: Arithmetic test (2+2=4)"
else
    echo "✗ Test 3 FAILED: Arithmetic test failed"
    exit 1
fi

echo ""
echo "All tests passed successfully! ✓"
exit 0
