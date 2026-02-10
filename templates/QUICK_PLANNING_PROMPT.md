# Quick Planning Prompt (Minimal Version)

Use this shorter template for quick component planning. Perfect for simple components.

---

## ⚡ QUICK COMPONENT PROMPT

**Component:** [Name]

**Does:** [One sentence description]

**Props:** [prop1, prop2, prop3]

**State:** [state1, state2]

**Children:** [Child1, Child2]

**Type:** [ui/feature/page/layout]

**Main job:** [1-2 sentence responsibility]

**AI Task:** Add this component to `models/component-structure.json` and update the component hierarchy diagram.

---

## Examples:

### Example 1: Button
**Component:** PrimaryButton
**Does:** Reusable button with loading state and variants
**Props:** onClick, disabled, loading, variant, children
**State:** None
**Children:** Spinner (when loading)
**Type:** ui
**Main job:** Handle click events with optional loading state

---

### Example 2: User Profile
**Component:** UserProfile
**Does:** Display user info with edit capability
**Props:** userId
**State:** isEditing, formData, isSaving
**Children:** Avatar, ProfileForm, SaveButton
**Type:** feature
**Main job:** Show and edit user profile information

---

### Example 3: Navigation
**Component:** MainNav
**Does:** Top navigation bar with logo and menu
**Props:** isLoggedIn, username, onLogout
**State:** menuOpen
**Children:** Logo, NavLinks, UserMenu
**Type:** layout
**Main job:** Provide navigation and user menu

---

## ⚡ QUICK FEATURE PROMPT

**Feature:** [Name]

**User wants to:** [Action/Goal]

**Needs these components:**
1. [Component1] - [role]
2. [Component2] - [role]
3. [Component3] - [role]

**Needs this state:** [Context or hooks needed]

**Needs these APIs:** [Endpoints needed]

**AI Task:** Plan this entire feature in JSON files and create diagrams.

---

## Example:

**Feature:** Todo List

**User wants to:** Create, view, complete, and delete todos

**Needs these components:**
1. TodoPage - Main page
2. TodoForm - Input field and add button
3. TodoList - List of todos
4. TodoItem - Single todo with checkbox and delete

**Needs this state:** TodoContext with todos array and CRUD actions

**Needs these APIs:** 
- GET /api/todos
- POST /api/todos
- PUT /api/todos/:id
- DELETE /api/todos/:id

**AI Task:** Plan this entire feature in JSON files and create diagrams.

