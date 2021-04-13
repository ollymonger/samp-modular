//SetDataAtIndex takes in an index number to affect and updates the data associated with it.
forward SetDataAtIndex(index, const newData[]);
public SetDataAtIndex(index, const newData[]){
    // loop through the MAX_DATA defined in the ExampleData.pwn
    for(new i = 0; i < MAX_DATA; i++){
        // If the number in the index is the same as the ID, then set the data.
        if(index == randData[i][id]){
            format(randData[i][data], 32, "%s", newData);
        }
    }
}