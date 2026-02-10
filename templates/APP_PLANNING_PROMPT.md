# Complete App Planning Prompt (Vite + React)

Use this template to plan your entire React application from scratch. This creates a comprehensive OOD (Object-Oriented Design) plan before you write any code.

---

## 🎯 APPLICATION PLANNING PROMPT

### App Identity

**App Name:** [YourAppName]

**Tagline:** [One sentence describing your app]

**Type:** [Web App / PWA / Web + Mobile]

**Target Users:** [Who will use this app?]

**Main Problem It Solves:** [What problem does this solve for users?]

---

## 🎨 Core Features

List the 3-7 main features of your app:

1. **[Feature 1 Name]** - [Brief description]
2. **[Feature 2 Name]** - [Brief description]
3. **[Feature 3 Name]** - [Brief description]
4. **[Feature 4 Name]** - [Brief description]
5. **[Feature 5 Name]** - [Brief description]

---

## 📱 Pages & Routes

List all pages/screens your app needs:

| Route | Page Component | Purpose | Authentication Required? |
|-------|---------------|---------|--------------------------|
| `/` | HomePage | Landing page | No |
| `/login` | LoginPage | User login | No |
| `/dashboard` | DashboardPage | User dashboard | Yes |
| `/[route]` | [PageName] | [Purpose] | [Yes/No] |
| `/[route]` | [PageName] | [Purpose] | [Yes/No] |

---

## 🏗️ App Architecture

### Root Level Components

**App Component:**
- Children: [Router, AuthProvider, ThemeProvider, etc.]
- State: [What global state does App manage?]
- Responsibilities: [What is App responsible for?]

**Router Setup:**
- Routing library: [React Router v6]
- Protected routes: [List routes that need authentication]
- Redirects: [Any automatic redirects?]

---

## 🧩 Component Breakdown

For each main page, break down the component hierarchy:

### [Page 1 Name] - `[Route]`

**Purpose:** [What this page does]

**Component Tree:**
```
[PageName]
├── [Component1]
│   ├── [SubComponent1]
│   └── [SubComponent2]
├── [Component2]
└── [Component3]
    └── [SubComponent3]
```

**Key Components:**
- **[Component1]** - [Purpose] - Props: [list] - Type: [layout/feature/ui]
- **[Component2]** - [Purpose] - Props: [list] - Type: [layout/feature/ui]
- **[Component3]** - [Purpose] - Props: [list] - Type: [layout/feature/ui]

---

### [Page 2 Name] - `[Route]`

**Purpose:** [What this page does]

**Component Tree:**
```
[PageName]
├── [Component1]
└── [Component2]
```

**Key Components:**
- **[Component1]** - [Purpose] - Props: [list] - Type: [layout/feature/ui]
- **[Component2]** - [Purpose] - Props: [list] - Type: [layout/feature/ui]

---

## 🔄 State Management Strategy

### Global State (Context API)

**Context 1: [ContextName] (e.g., AuthContext)**
- **State:**
  - [variable1]: [type] - [description]
  - [variable2]: [type] - [description]
- **Actions:**
  - [action1]: (params) => returnType - [what it does]
  - [action2]: (params) => returnType - [what it does]
- **Used by:** [Which components/pages use this?]

**Context 2: [ContextName]**
- **State:**
  - [variable]: [type] - [description]
- **Actions:**
  - [action]: (params) => returnType - [what it does]
- **Used by:** [Which components/pages use this?]

### Custom Hooks

**Hook 1: [useHookName]**
- **Purpose:** [What it does]
- **Parameters:** [param1, param2]
- **Returns:** { [data, loading, error] }
- **Used by:** [Which components?]
- **Fetches from:** [API endpoint / Context]

**Hook 2: [useHookName]**
- **Purpose:** [What it does]
- **Parameters:** [param1, param2]
- **Returns:** { [data, loading, error] }
- **Used by:** [Which components?]
- **Fetches from:** [API endpoint / Context]

---

## 🌐 Backend / API Integration

### API Base Configuration
- **Base URL:** [http://localhost:3000/api or production URL]
- **Authentication:** [JWT / Session / OAuth - how does auth work?]
- **Request format:** [JSON]
- **Response format:** [JSON]

### API Endpoints

**Authentication:**
- `POST /auth/login` - User login - Returns: { user, token }
- `POST /auth/register` - User registration - Returns: { user, token }
- `POST /auth/logout` - User logout - Returns: { message }
- `GET /auth/me` - Get current user - Returns: { user }

**[Feature 1 Name]:**
- `GET /api/[resource]` - [Description] - Returns: [data shape]
- `POST /api/[resource]` - [Description] - Accepts: [data shape]
- `PUT /api/[resource]/:id` - [Description] - Accepts: [data shape]
- `DELETE /api/[resource]/:id` - [Description] - Returns: [data shape]

**[Feature 2 Name]:**
- `GET /api/[resource]` - [Description] - Returns: [data shape]
- `POST /api/[resource]` - [Description] - Accepts: [data shape]

---

## 🎨 Tech Stack & Dependencies

### Core (Already Decided)
- ✅ **Vite** - Build tool / dev server
- ✅ **React 18** - UI library
- ✅ **React Router** - Routing

### State Management
- [ ] **Context API** (built-in) - Simple global state
- [ ] **Zustand** - Lightweight state management
- [ ] **Redux Toolkit** - Complex state management
- [ ] **TanStack Query (React Query)** - Server state management

**My Choice:** [Which one?] - **Why:** [Reason]

### Styling
- [ ] **CSS Modules** - Scoped CSS, no runtime
- [ ] **Tailwind CSS** - Utility-first CSS
- [ ] **Styled Components** - CSS-in-JS
- [ ] **Emotion** - CSS-in-JS
- [ ] **Chakra UI** - Component library
- [ ] **Material UI** - Component library

**My Choice:** [Which one?] - **Why:** [Reason]

### Forms & Validation
- [ ] **React Hook Form** - Performant forms
- [ ] **Formik** - Form management
- [ ] **Zod** - Schema validation
- [ ] **Yup** - Schema validation

**My Choice:** [Which one?] - **Why:** [Reason]

### HTTP Client
- [ ] **Fetch API** - Native, simple
- [ ] **Axios** - More features, interceptors
- [ ] **TanStack Query** - With caching and state

**My Choice:** [Which one?] - **Why:** [Reason]

### Additional Tools
- [ ] **Date handling:** [date-fns / dayjs / luxon]
- [ ] **Icons:** [React Icons / Heroicons / Lucide]
- [ ] **Notifications:** [react-hot-toast / react-toastify]
- [ ] **Charts:** [Recharts / Chart.js / D3]
- [ ] **Drag & Drop:** [dnd-kit / react-beautiful-dnd]
- [ ] **Other:** [List any other libraries]

---

## 📂 Folder Structure

```
src/
├── components/
│   ├── ui/               # Reusable UI components (Button, Input, Card)
│   ├── layout/           # Layout components (Header, Footer, Sidebar)
│   └── features/         # Feature-specific components
│       ├── auth/         # Auth-related components
│       ├── [feature1]/   # Feature 1 components
│       └── [feature2]/   # Feature 2 components
│
├── pages/                # Page components (one per route)
│   ├── HomePage.jsx
│   ├── DashboardPage.jsx
│   └── [OtherPages].jsx
│
├── contexts/             # Context providers
│   ├── AuthContext.jsx
│   └── [OtherContext].jsx
│
├── hooks/                # Custom hooks
│   ├── useAuth.js
│   ├── useAPI.js
│   └── [useCustomHook].js
│
├── services/             # API services
│   ├── api.js            # Base API config
│   ├── authService.js    # Auth API calls
│   └── [featureService].js
│
├── utils/                # Utility functions
│   ├── formatters.js
│   ├── validators.js
│   └── constants.js
│
├── styles/               # Global styles
│   └── index.css
│
├── App.jsx               # Root component
└── main.jsx              # Entry point
```

**Custom additions:** [Any folders you want to add?]

---

## 🎯 Data Models

Define the main data structures your app uses:

### User Model
```javascript
{
  id: string,
  email: string,
  username: string,
  avatar: string,
  role: 'user' | 'admin',
  createdAt: Date
}
```

### [Model 2 Name]
```javascript
{
  [field]: [type],
  [field]: [type],
  [field]: [type]
}
```

### [Model 3 Name]
```javascript
{
  [field]: [type],
  [field]: [type]
}
```

---

## 🔐 Authentication Flow

Describe how authentication works:

**Login Flow:**
1. User enters credentials in LoginPage
2. LoginForm calls `authService.login(credentials)`
3. Service POST to `/auth/login`
4. Backend validates and returns { user, token }
5. AuthContext saves user and token to state + localStorage
6. User redirected to Dashboard
7. Token sent with all subsequent API requests

**Protected Routes:**
- [List of routes that require authentication]
- Redirect to `/login` if not authenticated

**Token Storage:**
- [ ] localStorage
- [ ] sessionStorage
- [ ] Cookie (httpOnly)

---

## 🎨 Design Decisions

### Performance
- [ ] Code splitting by route (React.lazy)
- [ ] Image optimization (lazy loading, WebP)
- [ ] Memoization (React.memo, useMemo, useCallback)
- [ ] Virtual scrolling for long lists
- [ ] Bundle size monitoring

### Accessibility
- [ ] Semantic HTML
- [ ] ARIA labels
- [ ] Keyboard navigation
- [ ] Color contrast (WCAG AA)
- [ ] Screen reader testing

### Mobile Strategy
- [ ] Responsive design (works on all screen sizes)
- [ ] PWA (installable, offline support)
- [ ] Later: Native app with React Native
- [ ] Later: Capacitor wrapper

### Error Handling
- **API Errors:** [How to handle? Toast notifications? Error boundary?]
- **Form Validation:** [Client-side? Server-side? Both?]
- **Network Errors:** [Retry logic? Offline detection?]

### Loading States
- **Initial load:** [Skeleton screens? Spinners? Progress bar?]
- **Data fetching:** [Inline spinners? Disable buttons?]
- **Optimistic updates:** [Show immediately, rollback on error?]

---

## 🚀 Development Phases

### Phase 1: Foundation (Week 1)
- [ ] Set up Vite + React project
- [ ] Install and configure dependencies
- [ ] Create folder structure
- [ ] Set up routing
- [ ] Design system / component library setup
- [ ] API service configuration

### Phase 2: Authentication (Week 2)
- [ ] Login page
- [ ] Register page
- [ ] AuthContext
- [ ] Protected routes
- [ ] Logout functionality

### Phase 3: [Feature 1] (Week 3)
- [ ] [Task 1]
- [ ] [Task 2]
- [ ] [Task 3]

### Phase 4: [Feature 2] (Week 4)
- [ ] [Task 1]
- [ ] [Task 2]

### Phase 5: Polish & Deploy (Week 5)
- [ ] Error handling
- [ ] Loading states
- [ ] Responsive design
- [ ] Testing
- [ ] Deployment

---

## 📊 User Flows

### Main User Flow 1: [Name]
```
1. User lands on HomePage
2. User clicks "Get Started"
3. Redirects to /register
4. User fills registration form
5. Submits → Creates account
6. Auto-login → Redirects to /dashboard
7. User sees welcome message and main features
```

### Main User Flow 2: [Name]
```
1. [Step]
2. [Step]
3. [Step]
```

---

## 🎓 Technical Decisions & Rationale

**Why Vite?**
- [Your reasoning: Fast HMR, modern tooling, etc.]

**Why Context API vs Redux?**
- [Your reasoning]

**Why [Styling choice]?**
- [Your reasoning]

**Why [Form library]?**
- [Your reasoning]

**API Design Choices:**
- [REST vs GraphQL? Why?]
- [Any special patterns?]

---

## 🔍 Success Criteria

What does "done" look like?

**MVP Features:**
- [ ] [Feature 1] fully working
- [ ] [Feature 2] fully working
- [ ] User authentication
- [ ] [Key feature]

**Performance Targets:**
- [ ] Initial load < 3 seconds
- [ ] Lighthouse score > 90
- [ ] Bundle size < 200KB

**Quality Targets:**
- [ ] No console errors
- [ ] Responsive on mobile/tablet/desktop
- [ ] Accessible (keyboard navigation works)
- [ ] Error handling for all user actions

---

## 🎯 TASK FOR AI ASSISTANT

Based on this complete app plan, please:

1. ✅ Create the complete component hierarchy in `models/component-structure.json`
   - Include ALL pages and their children
   - Include ALL reusable components
   - Specify props, state, and responsibilities for each

2. ✅ Define ALL contexts and custom hooks in `models/state-management.json`

3. ✅ Create detailed prop schemas in `schemas/component-props.json` for complex components

4. ✅ Document ALL API endpoints in `schemas/api-contracts.json`

5. ✅ Create a complete component hierarchy diagram in `diagrams/component-hierarchy.md`

6. ✅ Create data flow diagrams for main user flows in `diagrams/data-flow.md`

7. ✅ Create app architecture diagram in `diagrams/app-architecture.md`

8. ✅ Document all technical decisions in `docs/design-decisions.md`

9. ✅ Document the folder structure in `docs/folder-structure.md`

10. ✅ Show me everything for review

11. ✅ Provide git commands to commit the complete OOD plan

---

## 📋 EXAMPLE: Todo App (Complete)

See next section for a fully filled-out example...

### App Identity

**App Name:** TaskMaster

**Tagline:** Simple, beautiful task management

**Type:** Web App (PWA later)

**Target Users:** Individuals who want to organize daily tasks

**Main Problem It Solves:** People forget tasks and need a simple way to track them

---

### Core Features

1. **Task Management** - Create, read, update, delete tasks
2. **Task Organization** - Organize by categories/tags
3. **Task Completion** - Mark tasks as complete, track progress
4. **Task Filtering** - Filter by status, category, date
5. **User Accounts** - Save tasks across devices

---

### Pages & Routes

| Route | Page Component | Purpose | Authentication Required? |
|-------|---------------|---------|--------------------------|
| `/` | HomePage | Landing page with info | No |
| `/login` | LoginPage | User login | No |
| `/register` | RegisterPage | User registration | No |
| `/app` | TodoAppPage | Main todo interface | Yes |
| `/settings` | SettingsPage | User settings | Yes |

---

### App Architecture

**App Component:**
- Children: [Router, AuthProvider, ThemeProvider, ToastProvider]
- State: [None - delegates to contexts]
- Responsibilities: [Wrap app with providers, configure routing]

**Router Setup:**
- Routing library: React Router v6
- Protected routes: `/app`, `/settings`
- Redirects: `/` → `/app` if logged in, `/app` → `/login` if logged out

---

### Component Breakdown

#### TodoAppPage - `/app`

**Purpose:** Main interface for managing todos

**Component Tree:**
```
TodoAppPage
├── AppHeader
│   ├── Logo
│   └── UserMenu
├── TodoSidebar
│   ├── CategoryList
│   └── AddCategoryButton
├── TodoMainContent
│   ├── TodoToolbar
│   │   ├── FilterButtons
│   │   └── SortDropdown
│   ├── TodoInput
│   └── TodoList
│       └── TodoItem (multiple)
│           ├── Checkbox
│           ├── TodoText
│           ├── CategoryBadge
│           └── DeleteButton
└── TodoFooter
    └── TaskStats
```

**Key Components:**
- **TodoInput** - Text input to add new todos - Props: onSubmit - Type: feature
- **TodoList** - List of all todos - Props: todos, filter - Type: feature
- **TodoItem** - Single todo with actions - Props: todo, onToggle, onDelete - Type: ui
- **CategoryList** - List of categories - Props: categories, activeCategory, onSelect - Type: feature

---

### Global State (Context API)

**Context 1: AuthContext**
- **State:**
  - user: User | null - Current logged-in user
  - isAuthenticated: boolean - Auth status
  - isLoading: boolean - Loading state
- **Actions:**
  - login: (credentials) => Promise<void> - Log user in
  - register: (userData) => Promise<void> - Register new user
  - logout: () => void - Log user out
- **Used by:** All protected pages, UserMenu

**Context 2: TodoContext**
- **State:**
  - todos: Todo[] - All user's todos
  - categories: Category[] - User's categories
  - filter: FilterType - Active filter
- **Actions:**
  - addTodo: (text, categoryId) => void - Create todo
  - toggleTodo: (id) => void - Mark complete/incomplete
  - deleteTodo: (id) => void - Delete todo
  - filterTodos: (filter) => void - Change filter
- **Used by:** TodoAppPage and all child components

---

### Custom Hooks

**Hook 1: useAuth**
- **Purpose:** Access authentication state and methods
- **Parameters:** None
- **Returns:** { user, isAuthenticated, login, logout, register, isLoading }
- **Used by:** LoginPage, RegisterPage, UserMenu, protected routes
- **Fetches from:** AuthContext

**Hook 2: useTodos**
- **Purpose:** Access and manage todos
- **Parameters:** None
- **Returns:** { todos, categories, filter, addTodo, toggleTodo, deleteTodo, filterTodos }
- **Used by:** TodoAppPage, TodoList, TodoInput
- **Fetches from:** TodoContext

**Hook 3: useAPI**
- **Purpose:** Generic API fetching with loading/error states
- **Parameters:** [endpoint, options]
- **Returns:** { data, loading, error, refetch }
- **Used by:** All components that fetch data
- **Fetches from:** API service

---

### API Endpoints

**Authentication:**
- `POST /auth/register` - Register new user - Returns: { user, token }
- `POST /auth/login` - Login user - Returns: { user, token }
- `GET /auth/me` - Get current user - Returns: { user }
- `POST /auth/logout` - Logout - Returns: { message }

**Todos:**
- `GET /api/todos` - Get all user's todos - Returns: { todos: Todo[] }
- `POST /api/todos` - Create todo - Accepts: { text, categoryId } - Returns: { todo }
- `PUT /api/todos/:id` - Update todo - Accepts: { text, completed, categoryId } - Returns: { todo }
- `DELETE /api/todos/:id` - Delete todo - Returns: { message }

**Categories:**
- `GET /api/categories` - Get categories - Returns: { categories: Category[] }
- `POST /api/categories` - Create category - Accepts: { name, color } - Returns: { category }
- `DELETE /api/categories/:id` - Delete category - Returns: { message }

---

### Tech Stack Choices

**State Management:** Context API
- **Why:** Simple app, not many complex state interactions

**Styling:** Tailwind CSS
- **Why:** Fast development, consistent design, great for prototyping

**Forms:** React Hook Form + Zod
- **Why:** Performant, great validation, TypeScript support

**HTTP Client:** Axios
- **Why:** Interceptors for auth tokens, better error handling

---

### Data Models

**User:**
```javascript
{
  id: string,
  email: string,
  username: string,
  createdAt: Date
}
```

**Todo:**
```javascript
{
  id: string,
  userId: string,
  text: string,
  completed: boolean,
  categoryId: string | null,
  createdAt: Date,
  updatedAt: Date
}
```

**Category:**
```javascript
{
  id: string,
  userId: string,
  name: string,
  color: string,
  createdAt: Date
}
```

---

**AI TASK:** Plan this entire Todo app in the OOD repository!

