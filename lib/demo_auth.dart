class DemoAuth {
    static String? registeredUsername;
    static String? registerPassword;

    static bool login(String username, String password) {
        final isAdmin = username == 'admin' && password == 'admin123';
        final isRegistered = 
        registeredUsername != null && 
        registerPassword != null &&
        username == registeredUsername && 
        password == registerPassword;

        return isAdmin || isRegistered;
    }

    static void register(String username, String password) {
        registeredUsername = username;
        registerPassword = password;
        
    }
}