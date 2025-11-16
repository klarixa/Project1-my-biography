# Project 1: My Biography

> **W3 Server-Side Development & Authentication - Lesson 5**

## 🎯 Project Overview

Build a personal biography webpage using Svelte components, props, and the spread operator. This project introduces you to component-based architecture, where you'll create reusable building blocks to display your personal information in an organized, professional way.

## 📚 Learning Objectives

By completing this project, you will:
- Create reusable Svelte components
- Master component props and data passing
- Use the spread operator to pass multiple props efficiently
- Structure data using JavaScript objects
- Build a multi-component application
- Understand component composition patterns

## 🏗️ What's Provided (15% Scaffolding)

✅ Basic SvelteKit project structure
✅ Development environment configuration
✅ Empty component files (Header, Section, Footer)
✅ Starter page with TODO comments
✅ Bootstrap CSS for styling

## 🔨 What You Will Build (85% Implementation)

### Core Features (Must Implement):

1. **Header Component**
   - Accept a `title` prop
   - Display the title in an `<h1>` tag
   - Make it reusable across pages

2. **Section Component**
   - Accept 4 props: `title`, `item1`, `item2`, `item3`
   - Display information in a structured format
   - Use semantic HTML (`<h3>`, `<p>` tags)
   - Reuse for different biography sections

3. **Footer Component**
   - Accept a `copyright` prop
   - Display copyright information
   - Use semantic `<footer>` tag

4. **Main Page Implementation**
   - Create data objects for personal info, hobbies, and skills
   - Use spread operator to pass object properties as props
   - Compose components to build complete biography
   - Style with Bootstrap classes

### Optional Enhancements:
- Add profile picture component
- Create timeline component for experiences
- Add contact information section
- Implement dark mode toggle
- Add smooth scroll navigation

## 🚀 Getting Started

### Prerequisites
- Node.js v18+ installed
- VS Code with Svelte extension
- Completed Lessons 1-4 (Svelte component basics)

### Installation

1. **Navigate to this template folder:**
   ```bash
   cd "Paid Courses/W3 Server-Side Development & Authentication/Templates/project-01-biography"
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start development server:**
   ```bash
   npm run dev
   ```

4. **Open in browser:**
   Visit `http://localhost:5173`

## 📂 Project Structure

```
project-01-biography/
├── src/
│   ├── lib/
│   │   ├── Header.svelte      # TODO: Accept title prop
│   │   ├── Section.svelte     # TODO: Accept 4 props
│   │   └── Footer.svelte      # TODO: Accept copyright prop
│   └── routes/
│       └── +page.svelte       # TODO: Compose components
├── package.json               # Dependencies
├── svelte.config.js           # Svelte configuration
└── vite.config.js             # Build configuration
```

## 🔍 Discovery Challenges

Before implementing, research and answer:

1. **Component Props**: How do you pass data to Svelte components?
   - What's the syntax for exporting props?
   - How do you use props in the template?
   - Can props be any data type?

2. **Spread Operator**: What is `{...object}` in Svelte?
   - When should you use it?
   - How does it differ from passing individual props?
   - What are the advantages?

3. **Component Import**: How do you use components in Svelte?
   - Import syntax from `$lib`?
   - Self-closing vs. opening/closing tags?
   - How to pass props?

4. **Data Organization**: How should you structure biography data?
   - Why use objects instead of individual variables?
   - How to create consistent data shapes?
   - Benefits of structured data?

## 💡 Implementation Guide

### Step 1: Build the Header Component

**File**: `src/lib/Header.svelte`

```svelte
<script>
  // TODO: Export a prop called 'title'
  // Hint: export let title;
</script>

<!-- TODO: Display title in <h1> tag -->
<!-- Hint: Use {title} to display the prop value -->
```

**What to learn:**
- How to create props with `export let`
- How to display prop values in templates
- Importance of prop naming conventions

### Step 2: Build the Section Component

**File**: `src/lib/Section.svelte`

```svelte
<script>
  // TODO: Export 4 props: title, item1, item2, item3
</script>

<div>
  <!-- TODO: Display title in <h3> -->
  <!-- TODO: Display each item in separate <p> tags -->
</div>
```

**What to learn:**
- Components can accept multiple props
- Props make components flexible and reusable
- Consistent prop naming helps readability

### Step 3: Build the Footer Component

**File**: `src/lib/Footer.svelte`

```svelte
<script>
  // TODO: Export copyright prop
</script>

<!-- TODO: Use <footer> tag with copyright text -->
```

**What to learn:**
- Semantic HTML in components
- Simple components are powerful
- Component responsibility (single purpose)

### Step 4: Compose Your Biography

**File**: `src/routes/+page.svelte`

```svelte
<script>
  // TODO: Import all three components from $lib
  // import Header from '$lib/Header.svelte';
  // import Section from '$lib/Section.svelte';
  // import Footer from '$lib/Footer.svelte';

  // TODO: Create data objects
  let myInfo = {
    title: "About Me",
    item1: "Your Name",
    item2: "Your Age",
    item3: "Your School"
  };

  let hobbiesInfo = {
    title: "My Hobbies",
    item1: "Hobby 1",
    item2: "Hobby 2",
    item3: "Hobby 3"
  };

  let skillsInfo = {
    title: "My Skills",
    item1: "Skill 1",
    item2: "Skill 2",
    item3: "Skill 3"
  };
</script>

<div class="container mt-5">
  <!-- TODO: Use Header component -->
  <!-- <Header title="My Biography" /> -->

  <!-- TODO: Use Section 3 times with spread operator -->
  <!-- <Section {...myInfo} /> -->
  <!-- <Section {...hobbiesInfo} /> -->
  <!-- <Section {...skillsInfo} /> -->

  <!-- TODO: Use Footer component -->
  <!-- <Footer copyright="© 2024 Your Name" /> -->
</div>
```

**What to learn:**
- The spread operator `{...object}` passes all object properties as props
- Objects organize related data
- Component composition creates full applications

## ✅ Success Criteria

Your project is complete when:
- [ ] Header component displays title prop correctly
- [ ] Section component accepts and displays 4 props
- [ ] Footer component displays copyright text
- [ ] Main page imports all components from `$lib`
- [ ] Data is organized in objects (myInfo, hobbiesInfo, skillsInfo)
- [ ] Spread operator is used to pass props
- [ ] All components display your real biography data
- [ ] Page uses Bootstrap styling (container, mt-5)

## 🧪 Testing Your Implementation

Test these scenarios:

1. **Component Props**:
   - Change Header title → should update on page
   - Modify Section data → should reflect immediately
   - Update Footer copyright → should display new text

2. **Spread Operator**:
   - Add a new object with different data
   - Use spread operator on it
   - Verify all props are passed correctly

3. **Component Reusability**:
   - Use Section component 3 times
   - Each should display different data
   - All should have same structure

4. **Data Structure**:
   - Ensure all objects have same properties (title, item1, item2, item3)
   - Test what happens with missing properties
   - Verify data types are consistent

## 📖 Resources

- **Svelte Components**: [https://svelte.dev/tutorial/nested-components](https://svelte.dev/tutorial/nested-components)
- **Component Props**: [https://svelte.dev/tutorial/component-props](https://svelte.dev/tutorial/component-props)
- **Spread Props**: [https://svelte.dev/tutorial/spread-props](https://svelte.dev/tutorial/spread-props)
- **Bootstrap Docs**: [https://getbootstrap.com/docs/5.0](https://getbootstrap.com/docs/5.0)

## 🎨 Grading Rubric

| Criteria | Points | Description |
|----------|--------|-------------|
| **Components** | 40 | All 3 components work with proper props |
| **Props & Spread Operator** | 30 | Correct use of props and `{...spread}` |
| **Code Quality** | 20 | Clean code, proper imports, organization |
| **UI/UX** | 10 | Professional appearance, good data |
| **Total** | 100 | |

## 🐛 Common Issues & Solutions

**Issue**: Props not displaying in component
**Solution**: Check that you used `export let propName` in the component's `<script>` tag

**Issue**: Spread operator not working
**Solution**: Ensure object properties match component prop names exactly

**Issue**: Components not found
**Solution**: Verify import path uses `$lib/` and file extension `.svelte`

**Issue**: Styling not applied
**Solution**: Check Bootstrap CDN is imported in the `<style>` section

## 📦 Build for Production

When ready to deploy:
```bash
npm run build
npm run preview  # Test production build locally
```

## 🔗 Related Course Materials

- **Concept 03**: Svelte Components
- **Concept 04**: Component Props
- **Activity 04**: Component Exercises
- **Lesson**: 5
- **Project Specification**: `../../Project/Project 01- My Biography.mdx`

---

**Remember**: This project teaches you the foundation of component-based development. Components are the building blocks of modern web applications - master them here, use them everywhere!

**💡 Pro Tip**: Think about how these components could be reused in other projects. Good components are flexible, well-named, and do one thing well.
