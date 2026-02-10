# Recommended Vite + React Project Structure

```
project-root/
├── public/              # Static assets (served as-is)
│   ├── favicon.ico
│   └── images/
│
├── src/
│   ├── assets/          # Images, fonts, etc. (processed by Vite)
│   │   ├── images/
│   │   ├── fonts/
│   │   └── icons/
│   │
│   ├── components/      # React components
│   │   ├── ui/          # Reusable UI components
│   │   │   ├── Button/
│   │   │   │   ├── Button.jsx
│   │   │   │   ├── Button.module.css
│   │   │   │   └── index.js
│   │   │   ├── Card/
│   │   │   ├── Input/
│   │   │   └── Modal/
│   │   │
│   │   ├── layout/      # Layout components
│   │   │   ├── Header/
│   │   │   ├── Footer/
│   │   │   ├── Sidebar/
│   │   │   └── Layout/
│   │   │
│   │   └── features/    # Feature-specific components
│   │       ├── auth/
│   │       │   ├── LoginForm/
│   │       │   └── RegisterForm/
│   │       └── dashboard/
│   │
│   ├── pages/           # Page-level components (routes)
│   │   ├── Home.jsx
│   │   ├── Dashboard.jsx
│   │   ├── Profile.jsx
│   │   └── NotFound.jsx
│   │
│   ├── hooks/           # Custom React hooks
│   │   ├── useAuth.js
│   │   ├── useAPI.js
│   │   └── useLocalStorage.js
│   │
│   ├── context/         # React Context providers
│   │   ├── AuthContext.jsx
│   │   ├── ThemeContext.jsx
│   │   └── index.js
│   │
│   ├── services/        # API and business logic
│   │   ├── api.js
│   │   ├── auth.service.js
│   │   └── user.service.js
│   │
│   ├── utils/           # Utility functions
│   │   ├── helpers.js
│   │   ├── validators.js
│   │   └── constants.js
│   │
│   ├── styles/          # Global styles
│   │   ├── global.css
│   │   ├── variables.css
│   │   └── reset.css
│   │
│   ├── routes/          # Route definitions
│   │   └── index.jsx
│   │
│   ├── App.jsx          # Root component
│   ├── App.css
│   └── main.jsx         # Entry point
│
├── .env                 # Environment variables (local)
├── .env.example         # Example env file
├── .gitignore
├── index.html           # HTML entry point
├── package.json
├── vite.config.js       # Vite configuration
└── README.md
```

## File Naming Conventions

- **Components**: PascalCase (`Button.jsx`, `UserProfile.jsx`)
- **Hooks**: camelCase with 'use' prefix (`useAuth.js`, `useAPI.js`)
- **Services**: camelCase with '.service' suffix (`auth.service.js`)
- **Utils**: camelCase (`helpers.js`, `formatDate.js`)
- **Styles**: Match component name (`Button.module.css`)

## Component Structure Pattern

Each component in its own folder:
```
ComponentName/
├── ComponentName.jsx      # Component logic
├── ComponentName.module.css  # Component styles
├── ComponentName.test.jsx    # Tests
└── index.js               # Export (allows clean imports)
```

## Import Aliases (vite.config.js)

```javascript
export default {
  resolve: {
    alias: {
      '@': '/src',
      '@components': '/src/components',
      '@hooks': '/src/hooks',
      '@services': '/src/services',
      '@utils': '/src/utils',
      '@assets': '/src/assets',
    }
  }
}
```

Usage: `import Button from '@components/ui/Button'`
