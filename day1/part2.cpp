#include <stdio.h>
#include <string>
#include <regex>

int main(void) {
    std::regex reg("^[a-zA-Z]*?((?:one|two|three|four|five|six|seven|eight|nine)|(?:[0-9]))");
    int sum = 0;
    for (;;) {
        char tmp [100];
        scanf("%s", tmp);
        std::string str = tmp;
        if (str.empty()) break;

        
    }



    printf("%d", sum);
    return 0;
}
