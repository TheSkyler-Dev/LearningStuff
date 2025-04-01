//This is a code snippent for creating dynamic menus in C++ DO NOT COMPILE!
//Menu class
class Menu {
    public:
        Menu() = default;

        void addOption(const std::string& option) {
            options.push_back(option);
        }

        void printMenu() const {
            printHeader("Main Menu");
            for (size_t i = 0; i < options.size(); ++i) {
                printOption(i + 1, options[i]);
            }
            printFooter();
        }

        void printHeader(const std::string& header) const {
            std::cout << Colors::fgCyan << "|---------------------------|" << Colors::fgReset << std::endl;
            std::cout << Colors::fgCyan << "| " << Colors::fgYellow << header << Colors::fgCyan << std::string(16, ' ') << " |" << Colors::fgReset << std::endl;
            std::cout << Colors::fgCyan << "|---------------------------|" << Colors::fgReset << std::endl;
        }

        void printOption(int index, const std::string& option) const {
            std::cout << Colors::fgCyan << "| " << Colors::fgGreen << index << ". " << option << Colors::fgCyan << std::string(22 - (option.length()), ' ') << " |" << Colors::fgReset << std::endl;
        }

        void printFooter() const {
            std::cout << Colors::fgCyan << "|___________________________|" << Colors::fgReset << std::endl;
        }

    private:
        std::vector<std::string> options;
};

//option creation
 Menu menu;

 menu.addOption("Start Chat");
 menu.addOption("View Chat History");
 menu.addOption("Exit");
