# Component Planning Prompt Template

Use this template when planning a new component or feature for your React app. Fill in the sections below and use it as a prompt to an AI assistant or as a self-guided planning worksheet.

---

## 🎯 COMPONENT PLANNING PROMPT

### Project Context
**My app is:** [Brief description of your overall application]

**Tech stack:**
- Frontend: Vite + React
- State Management: [Context API / Zustand / Redux]
- Styling: [CSS Modules / Tailwind / Styled Components]
- Other: [Any other relevant tech]

---

### Component Overview

**Component Name:** [ComponentName]

**Component Type:** [Choose one: root / page / layout / feature / ui]

**Purpose/Description:** [What does this component do? 1-2 sentences]

**Where it's used:** [Which parent component(s) will render this?]

---

### Component Details

**What data does it need from its parent? (Props)**
- [prop1] - [description]
- [prop2] - [description]
- [prop3] - [description]

**What data does it manage internally? (State)**
- [stateVar1] - [description]
- [stateVar2] - [description]

**What child components does it render?**
- [ChildComponent1] - [what it does]
- [ChildComponent2] - [what it does]

**What hooks does it use?**
- [useState, useEffect, useCustomHook, etc.]

**Main responsibilities:** (What is this component's job?)
1. [Responsibility 1]
2. [Responsibility 2]
3. [Responsibility 3]

---

### User Interactions

**What can users do with this component?**
1. [Action 1: e.g., "Click submit button"]
2. [Action 2: e.g., "Type in input field"]
3. [Action 3: e.g., "Select from dropdown"]

**What happens when users interact?**
- When [action], it should [expected behavior]
- When [action], it should [expected behavior]

---

### Data Flow

**Does this component fetch data from an API?**
- [ ] Yes - Endpoint: [/api/endpoint]
- [ ] No

**Does this component need global state (Context)?**
- [ ] Yes - Which context: [AuthContext / ThemeContext / etc.]
- [ ] No

**Does this component need a custom hook?**
- [ ] Yes - Hook name: [useHookName]
- [ ] No

---

### Validation & Error Handling

**Input validation needed?**
- [Field]: [Validation rules]

**Error states to handle?**
- [Error type]: [How to display]

---

### TASK FOR AI ASSISTANT:

Based on the information above, please:

1. ✅ Add this component to `models/component-structure.json` with all props, state, children, hooks, and responsibilities

2. ✅ Add detailed prop specifications to `schemas/component-props.json` (if props are complex)

3. ✅ If a custom hook or context is needed, add it to `models/state-management.json`

4. ✅ Update `diagrams/component-hierarchy.md` to show this component in the visual tree

5. ✅ Show me the changes you made so I can review them

6. ✅ Create git commit commands to save these changes

---

## 📋 Example Usage

Here's a filled-out example for reference:

### Component Overview

**Component Name:** ProductCard

**Component Type:** ui

**Purpose/Description:** Displays a single product with image, title, price, and add-to-cart button. Used in product grids and lists.

**Where it's used:** ProductGrid, SearchResults, RelatedProducts

---

### Component Details

**What data does it need from its parent? (Props)**
- product - Object containing id, name, price, image, inStock
- onAddToCart - Callback function when user clicks add to cart
- variant - "grid" or "list" display mode

**What data does it manage internally? (State)**
- isHovered - Boolean to show/hide quick view button
- quantity - Number for quantity selector

**What child components does it render?**
- ProductImage - Displays product photo with lazy loading
- PriceDisplay - Shows price with currency formatting
- AddToCartButton - Button with loading state
- QuickViewButton - Shown on hover (optional)

**What hooks does it use?**
- useState (for isHovered, quantity)
- useCart (to access cart actions)

**Main responsibilities:**
1. Display product information clearly
2. Handle add-to-cart action with quantity
3. Show hover effects and quick view option
4. Indicate if product is out of stock

---

### User Interactions

**What can users do with this component?**
1. Hover over card to reveal quick view button
2. Click add-to-cart button
3. Adjust quantity with +/- buttons
4. Click product image/title to view details

**What happens when users interact?**
- When hovering, show quick view button and subtle elevation
- When clicking add-to-cart, call onAddToCart(product, quantity) and show confirmation
- When out of stock, disable add-to-cart and show "Out of Stock" badge

---

### Data Flow

**Does this component fetch data from an API?**
- [X] No - Product data is passed as prop

**Does this component need global state (Context)?**
- [X] Yes - CartContext (to add items to cart)

**Does this component need a custom hook?**
- [X] Yes - useCart (to access cart functions)

---

### Validation & Error Handling

**Input validation needed?**
- quantity: Must be >= 1 and <= product.maxQuantity

**Error states to handle?**
- Product out of stock: Show badge and disable button
- Add to cart fails: Show error toast message

---

**TASK FOR AI ASSISTANT:** [Same as template above]

