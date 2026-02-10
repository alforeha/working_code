import { createContext, useContext, useState, useEffect } from 'react';
import PropTypes from 'prop-types';

// Create context
const CustomContext = createContext(undefined);

/**
 * Custom Context Provider
 */
export const CustomProvider = ({ children }) => {
  const [state, setState] = useState({
    data: null,
    isLoading: false,
  });

  // Initialize or fetch data
  useEffect(() => {
    const initialize = async () => {
      setState(prev => ({ ...prev, isLoading: true }));
      
      try {
        // Initialization logic
        const data = await fetchInitialData();
        setState({ data, isLoading: false });
      } catch (error) {
        console.error('Initialization error:', error);
        setState(prev => ({ ...prev, isLoading: false }));
      }
    };

    initialize();
  }, []);

  // Context actions
  const updateData = (newData) => {
    setState(prev => ({ ...prev, data: newData }));
  };

  const clearData = () => {
    setState({ data: null, isLoading: false });
  };

  const value = {
    ...state,
    updateData,
    clearData,
  };

  return (
    <CustomContext.Provider value={value}>
      {children}
    </CustomContext.Provider>
  );
};

CustomProvider.propTypes = {
  children: PropTypes.node.isRequired,
};

/**
 * Custom hook to use context
 */
export const useCustomContext = () => {
  const context = useContext(CustomContext);
  
  if (context === undefined) {
    throw new Error('useCustomContext must be used within CustomProvider');
  }
  
  return context;
};

// Helper function
const fetchInitialData = async () => {
  // Fetch logic
  return null;
};
