//this is a code snippet for clearing console windows DO NOT COMPILE
//ConsoleClear class
class ConsoleClear {
    public:
        static void clear() {
            #ifdef _WIN32
                std::system("cls");
            #else
                std::system("clear");
            #endif
        }
};
