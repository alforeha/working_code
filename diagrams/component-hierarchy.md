# Component Hierarchy

```mermaid
graph TD
    App[App]
    App --> Router[Router]
    Router --> HomePage[HomePage]
    Router --> Dashboard[Dashboard]
    Router --> Profile[Profile]
    
    HomePage --> Header[Header]
    HomePage --> Hero[Hero]
    HomePage --> Features[Features]
    HomePage --> Footer[Footer]
    
    Header --> Logo[Logo]
    Header --> Nav[Nav]
    Header --> UserMenu[UserMenu]
    
    Dashboard --> Sidebar[Sidebar]
    Dashboard --> MainContent[MainContent]
    Dashboard --> Analytics[Analytics]
    
    Profile --> ProfileHeader[ProfileHeader]
    Profile --> ProfileForm[ProfileForm]
    Profile --> SettingsPanel[SettingsPanel]
    
    style App fill:#ff6b6b
    style HomePage fill:#4ecdc4
    style Dashboard fill:#4ecdc4
    style Profile fill:#4ecdc4
```

## Component Types

- 🔴 **Root Components** - App-level containers
- 🔵 **Page Components** - Route-level views
- 🟢 **Layout Components** - Structural elements (Header, Footer, Sidebar)
- 🟡 **UI Components** - Reusable elements (Button, Card, Input)
