#include <a_samp>

// Configuration

// Utilities

// Dependencies
#include <YSI_Coding\y_hooks>

// Modules

// Enums
#include "modules/enums/ExampleData.pwn"

// Functions
#include "modules/functions/SetDataAtIndex.pwn"

main() {
    // Do not remove these!
    // They set up 10 enums to be added locally so that we can affect the data using the SetDataAtIndex function!
    SetupTests();
    PrintTests();

    //This is used to demonstrate how you can use different functions from different files, and then affect data that is from another file!
    SetDataAtIndex(3, "HELLO WORLD");
    PrintSpecificTest(3);
}

//This prints ALL test cases into the console!
stock PrintTests(){
    for(new i = 0; i < MAX_DATA; i++){
        new string[256];
        format(string, sizeof(string), "Randid: %d (data: %s)", randData[i][id], randData[i][data]);
        print(string);
    }
}

//This will print a specific test case into the console!
stock PrintSpecificTest(index){
    for(new i = 0; i < MAX_DATA; i++){
        if(i == index){
            new string[256];
            format(string, sizeof(string), "Randid: %d (data: %s)", randData[i][id], randData[i][data]);
            print(string);
        }
    }
}

//This function will set up some local tests in the enum: ENUM_RANDOM_DATA which is located in the ExampleData.pwn
stock SetupTests(){
    for(new i = 0; i < MAX_DATA; i++){
        randData[i][id] = i;
        format(randData[i][data], 32, "Randstring");
    }
}