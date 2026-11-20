class DemoAuth {
    static String? registeredUsername;
    static String? registerPassword;
    static String? currentUsername;

    static bool login(String username, String password) {
        final isAdmin = username == 'admin' && password == 'admin123';

        final isRegisteredUser = 
        registeredUsername != null && 
        username == registeredUsername && 
        password == registerPassword;

        if (isAdmin || isRegisteredUser) {
          currentUsername = username;
          return true;
        }

        return false;
    }

    static void register(String username, String password) {
        registeredUsername = username;
        registerPassword = password;

    }

    static void logout() {
      currentUsername = null;
        
    }
}