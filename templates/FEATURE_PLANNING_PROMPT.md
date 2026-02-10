# Feature Planning Prompt Template

Use this template when planning a complete feature (multiple components working together). Fill in the sections below.

---

## 🎯 FEATURE PLANNING PROMPT

### Project Context
**My app is:** [Brief description of your overall application]

**Tech stack:**
- Frontend: Vite + React
- State Management: [Context API / Zustand / Redux]
- Backend: [REST API / GraphQL / Firebase]
- Styling: [CSS Modules / Tailwind / Styled Components]

---

### Feature Overview

**Feature Name:** [FeatureName - e.g., "User Authentication", "Shopping Cart", "Todo Management"]

**User Story:** As a [user type], I want to [action] so that [benefit]

**Priority:** [High / Medium / Low]

---

### Components Needed

List all components this feature requires:

**1. [ComponentName1]**
- Type: [page / layout / feature / ui]
- Role: [What it does]
- Props: [List main props]
- Children: [Child components]

**2. [ComponentName2]**
- Type: [page / layout / feature / ui]
- Role: [What it does]
- Props: [List main props]
- Children: [Child components]

**3. [ComponentName3]**
- Type: [page / layout / feature / ui]
- Role: [What it does]
- Props: [List main props]
- Children: [Child components]

---

### State Management

**Global State Needed?**
- [ ] Yes - Create new Context: [ContextName]
- [ ] Yes - Use existing Context: [WhichOne]
- [ ] No - Local state only

**Context Details (if needed):**

**Context Name:** [FeatureContext]

**State:**
- [stateVar1]: [type] - [description]
- [stateVar2]: [type] - [description]

**Actions:**
- [actionName1]: [signature] - [what it does]
- [actionName2]: [signature] - [what it does]

---

### Custom Hooks Needed

**Hook 1:**
- Name: [useHookName]
- Purpose: [What it does]
- Parameters: [List params]
- Returns: [What it returns]
- Usage: [When/where to use it]

**Hook 2:**
- Name: [useHookName]
- Purpose: [What it does]
- Parameters: [List params]
- Returns: [What it returns]
- Usage: [When/where to use it]

---

### API Integration

**Endpoints Needed:**

**1. [GET/POST/PUT/DELETE] /api/endpoint**
- Purpose: [What this endpoint does]
- Request: [What data to send]
- Response: [What data comes back]
- Used by: [Which component/hook]

**2. [GET/POST/PUT/DELETE] /api/endpoint**
- Purpose: [What this endpoint does]
- Request: [What data to send]
- Response: [What data comes back]
- Used by: [Which component/hook]

---

### User Flow

Describe the complete user journey through this feature:

**Step 1:** User [action]
**Step 2:** App [behavior/response]
**Step 3:** User [action]
**Step 4:** App [behavior/response]
**Step 5:** Final state: [outcome]

---

### Data Flow

Describe how data moves through the feature:

```
User Action
   ↓
[Component] 
   ↓
[Hook/Context]
   ↓
[Service/API]
   ↓
[Backend]
   ↓
[Response flows back up]
```

---

### Error Handling

**What could go wrong?**
1. [Error scenario] → [How to handle]
2. [Error scenario] → [How to handle]
3. [Error scenario] → [How to handle]

---

### Validation Rules

**Client-side validation:**
- [Field/Input]: [Validation rules]
- [Field/Input]: [Validation rules]

**Server-side validation:**
- [Field/Input]: [What backend checks]

---

### TASK FOR AI ASSISTANT:

Based on the information above, please:

1. ✅ Add ALL components to `models/component-structure.json` with complete details

2. ✅ Add prop specifications for complex components to `schemas/component-props.json`

3. ✅ Add the Context and/or custom hooks to `models/state-management.json`

4. ✅ Add API endpoints to `schemas/api-contracts.json`

5. ✅ Create a component hierarchy diagram in `diagrams/component-hierarchy.md`

6. ✅ Create a data flow sequence diagram in `diagrams/data-flow.md`

7. ✅ Update `docs/design-decisions.md` with any architectural decisions

8. ✅ Show me all changes for review

9. ✅ Provide git commands to commit everything

---

## 📋 Example Usage: Shopping Cart Feature

### Feature Overview

**Feature Name:** Shopping Cart

**User Story:** As a shopper, I want to add products to a cart and checkout so that I can purchase multiple items at once

**Priority:** High

---

### Components Needed

**1. CartPage**
- Type: page
- Role: Main cart view showing all items and totals
- Props: None (gets data from CartContext)
- Children: CartItems, CartSummary, CheckoutButton

**2. CartItems**
- Type: feature
- Role: List of all items in cart
- Props: None (gets from CartContext)
- Children: CartItem (multiple)

**3. CartItem**
- Type: ui
- Role: Single cart item with image, details, quantity controls
- Props: item, onUpdateQuantity, onRemove
- Children: QuantitySelector, RemoveButton

**4. CartSummary**
- Type: feature
- Role: Shows subtotal, tax, shipping, total
- Props: None (calculates from CartContext)
- Children: SummaryLine (multiple)

**5. CheckoutButton**
- Type: ui
- Role: Proceed to checkout button
- Props: disabled, onClick, isLoading
- Children: None

---

### State Management

**Global State Needed?**
- [X] Yes - Create new Context: CartContext

**Context Details:**

**Context Name:** CartContext

**State:**
- items: CartItem[] - Array of items in cart
- total: number - Total price
- itemCount: number - Total items
- isLoading: boolean - Loading state for operations

**Actions:**
- addToCart: (product, quantity) => void - Add item to cart
- removeFromCart: (itemId) => void - Remove item
- updateQuantity: (itemId, quantity) => void - Change quantity
- clearCart: () => void - Empty the cart
- checkout: () => Promise<Order> - Process checkout

---

### Custom Hooks Needed

**Hook 1:**
- Name: useCart
- Purpose: Access cart state and actions
- Parameters: None
- Returns: { items, total, itemCount, addToCart, removeFromCart, updateQuantity, clearCart, checkout, isLoading }
- Usage: Any component that needs cart functionality

**Hook 2:**
- Name: useCartPersistence
- Purpose: Save cart to localStorage automatically
- Parameters: None
- Returns: None (side effects only)
- Usage: In CartContext provider

---

### API Integration

**Endpoints Needed:**

**1. POST /api/cart/items**
- Purpose: Add item to cart
- Request: { productId, quantity }
- Response: { cart: Cart, message: string }
- Used by: CartContext.addToCart

**2. DELETE /api/cart/items/:itemId**
- Purpose: Remove item from cart
- Request: None
- Response: { cart: Cart }
- Used by: CartContext.removeFromCart

**3. PUT /api/cart/items/:itemId**
- Purpose: Update item quantity
- Request: { quantity }
- Response: { cart: Cart }
- Used by: CartContext.updateQuantity

**4. POST /api/checkout**
- Purpose: Process checkout
- Request: { cartId, shippingAddress, paymentMethod }
- Response: { orderId, status, message }
- Used by: CartContext.checkout

---

### User Flow

**Step 1:** User browses products and clicks "Add to Cart" on ProductCard
**Step 2:** App calls addToCart(), shows success message, updates cart count in header
**Step 3:** User clicks cart icon in header
**Step 4:** App navigates to CartPage, displays all cart items
**Step 5:** User adjusts quantities or removes items
**Step 6:** App updates totals in real-time
**Step 7:** User clicks "Proceed to Checkout"
**Step 8:** App validates cart (items in stock, etc.) and navigates to checkout
**Final state:** User is on checkout page with cart data ready

---

### Data Flow

```
User clicks "Add to Cart"
   ↓
ProductCard component
   ↓
useCart hook → addToCart()
   ↓
CartContext
   ↓
CartService.addItem()
   ↓
POST /api/cart/items
   ↓
Backend updates cart
   ↓
Response returns updated cart
   ↓
CartContext updates state
   ↓
All components using useCart re-render
   ↓
User sees updated cart count/items
```

---

### Error Handling

**What could go wrong?**
1. Product out of stock → Show error message, don't add to cart
2. Network error → Show retry button, keep optimistic update
3. Invalid quantity (negative, zero) → Validate on client, show error
4. Cart exceeds max items → Show limit message
5. Checkout fails → Preserve cart, show error, allow retry

---

### Validation Rules

**Client-side validation:**
- quantity: Must be >= 1 and <= 99
- quantity: Must be <= product.stock
- cart: Must not be empty at checkout

**Server-side validation:**
- Verify product exists and is in stock
- Verify prices haven't changed
- Verify quantity limits

---

**TASK FOR AI ASSISTANT:** [Plan this entire feature in the OOD repository]

