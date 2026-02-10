/**
 * Service Name - Handle specific domain logic
 */
class ServiceName {
  constructor() {
    this.baseURL = import.meta.env.VITE_API_URL || 'http://localhost:3000';
    this.cache = new Map();
  }

  /**
   * Method description
   * @param {*} param - Parameter description
   * @returns {Promise<*>} Return description
   */
  async methodName(param) {
    try {
      const response = await fetch(`${this.baseURL}/endpoint/${param}`, {
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${this.getToken()}`,
        },
      });

      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }

      const data = await response.json();
      return data;
    } catch (error) {
      console.error('Service error:', error);
      throw error;
    }
  }

  /**
   * Post data
   * @param {Object} data - Data to send
   * @returns {Promise<*>} Response data
   */
  async create(data) {
    try {
      const response = await fetch(`${this.baseURL}/endpoint`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${this.getToken()}`,
        },
        body: JSON.stringify(data),
      });

      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }

      return await response.json();
    } catch (error) {
      console.error('Create error:', error);
      throw error;
    }
  }

  /**
   * Get authentication token
   * @returns {string|null} Auth token
   */
  getToken() {
    return localStorage.getItem('authToken');
  }

  /**
   * Clear service cache
   */
  clearCache() {
    this.cache.clear();
  }
}

// Export singleton instance
export default new ServiceName();
