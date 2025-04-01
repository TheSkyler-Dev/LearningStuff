//This is a code snippet and will not compile or run. DO NOT COMPILE THIS!
//coloring class
class Colors {
    public:
        // Foreground colors
        static const std::string fgReset;
        static const std::string fgRed;
        static const std::string fgGreen;
        static const std::string fgBlue;
        static const std::string fgYellow;
        static const std::string fgCyan;
        static const std::string fgMagenta;
        static const std::string fgWhite;
        static const std::string fgBlack;
    
        // Background colors
        static const std::string bgReset;
        static const std::string bgRed;
        static const std::string bgGreen;
        static const std::string bgBlue;
        static const std::string bgYellow;
        static const std::string bgCyan;
        static const std::string bgMagenta;
        static const std::string bgWhite;
        static const std::string bgBlack;
};

// Foreground colors
const std::string Colors::fgReset = "\033[0m";
const std::string Colors::fgRed = "\033[31m";
const std::string Colors::fgGreen = "\033[32m";
const std::string Colors::fgBlue = "\033[34m";
const std::string Colors::fgYellow = "\033[33m";
const std::string Colors::fgCyan = "\033[36m";
const std::string Colors::fgMagenta = "\033[35m";
const std::string Colors::fgWhite = "\033[37m";
const std::string Colors::fgBlack = "\033[30m";

// Background colors
const std::string Colors::bgReset = "\033[0m";
const std::string Colors::bgRed = "\033[41m";
const std::string Colors::bgGreen = "\033[42m";
const std::string Colors::bgBlue = "\033[44m";
const std::string Colors::bgYellow = "\033[43m";
const std::string Colors::bgCyan = "\033[46m";
const std::string Colors::bgMagenta = "\033[45m";
const std::string Colors::bgWhite = "\033[47m";
const std::string Colors::bgBlack = "\033[40m";
