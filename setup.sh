#!/bin/bash

# Project 1: My Biography - Local Development Setup
# W3 Server-Side Development & Authentication

echo "📝 My Biography - SvelteKit Project Setup"
echo "=========================================="
echo ""

# Check if script is run from correct directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: Please run this script from the project-01-biography directory"
    echo "   Expected: cd Templates/project-01-biography && ./setup.sh"
    exit 1
fi

echo "🎓 DISCOVERY LEARNING OBJECTIVES:"
echo "   • Master component-based architecture"
echo "   • Practice props and data flow patterns"
echo "   • Use spread operator for efficient prop passing"
echo "   • Build reusable UI components"
echo ""

echo "📚 Key Concepts (Lesson 4):"
echo "   → SvelteKit 2.0 component system"
echo "   → Props for component communication"
echo "   → Spread operator (...props)"
echo "   → Reusable card components"
echo ""

# Check for node_modules
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    echo ""
    npm install

    if [ $? -ne 0 ]; then
        echo "❌ npm install failed"
        echo "   Try running: npm install --legacy-peer-deps"
        exit 1
    fi

    echo "✅ Dependencies installed successfully!"
    echo ""
else
    echo "✅ Dependencies already installed"
    echo ""
fi

echo "📁 Project Structure:"
echo "   • Entry point: src/routes/+page.svelte"
echo "   • Components: src/lib/ (create your own!)"
echo "   • Styles: Bootstrap 5 pre-configured"
echo ""

echo "🚀 Starting SvelteKit development server..."
echo ""
echo "   → Server will start at: http://localhost:5173"
echo "   → Press Ctrl+C to stop the server"
echo ""
echo "=========================================="
echo ""

# Start the development server
npm run dev
