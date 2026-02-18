# Class Diagrams

UML-style class diagrams showing component structure with props, state, and methods.

## Component Classes

```mermaid
classDiagram
    class App {
        -string theme
        -User user
        +setState() void
        +render() JSX
    }
    
    class HomePage {
        +User user
        +useEffect() void
        +useState() void
        +render() JSX
    }
    
    class Header {
        +boolean isLoggedIn
        +string username
        -boolean menuOpen
        -toggleMenu() void
        +render() JSX
    }
    
    class DashboardPage {
        +string userId
        -string selectedPeriod
        -boolean isLoading
        +useEffect() void
        +useState() void
        +useAPI() void
        +render() JSX
    }
    
    class StatsGrid {
        +Stats[] stats
        +string period
        +formatStats() Stats[]
        +render() JSX
    }
    
    App --> Router : contains
    App --> ThemeProvider : wraps
    HomePage --> Header : contains
    HomePage --> Hero : contains
    HomePage --> Features : contains
    HomePage --> Footer : contains
    DashboardPage --> DashboardHeader : contains
    DashboardPage --> StatsGrid : contains
    DashboardPage --> ActivityFeed : contains
    StatsGrid --> StatCard : contains multiple
```

## Context Classes

```mermaid
classDiagram
    class AuthContext {
        +User user
        +boolean isAuthenticated
        +boolean isLoading
        +login(credentials) Promise~void~
        +logout() void
        +updateUser(userData) void
    }
    
    class ThemeContext {
        +string mode
        +ColorScheme colors
        +toggleTheme() void
        +setTheme(mode) void
    }
    
    class useAuth {
        <<hook>>
        +returns AuthContext
    }
    
    class useTheme {
        <<hook>>
        +returns ThemeContext
    }
    
    class useAPI {
        <<hook>>
        +string endpoint
        +object options
        +returns data, loading, error, refetch
    }
    
    useAuth ..> AuthContext : accesses
    useTheme ..> ThemeContext : accesses
```

## Data Models

```mermaid
classDiagram
    class User {
        +string id
        +string email
        +string username
        +string avatar
        +string role
        +Date createdAt
    }
    
    class Stats {
        +string id
        +string label
        +number value
        +string unit
        +number change
    }
    
    class ColorScheme {
        +string primary
        +string secondary
        +string background
        +string text
    }
    
    AuthContext --> User : manages
    StatsGrid --> Stats : displays
    ThemeContext --> ColorScheme : uses
```

## Legend

**Visibility:**
- `+` Public (props from parent)
- `-` Private (internal state)

**Relationships:**
- `-->` Composition (contains)
- `..>` Dependency (uses)
- `--|>` Inheritance (extends)

**Member Types:**
- Properties listed at top
- Methods listed below
- `<<stereotype>>` for special types (hooks, contexts)

## How to Update

When adding new components:

1. Add the class box:
```mermaid
class NewComponent {
    +PropType propName
    -StateType stateName
    +methodName() ReturnType
}
```

2. Add relationships:
```mermaid
ParentComponent --> NewComponent : contains
NewComponent ..> SomeContext : uses
```

3. Commit changes:
```powershell
git add diagrams/class-diagram.md
git commit -m "Added NewComponent to class diagram"
git push
```
