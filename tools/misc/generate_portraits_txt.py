from pdx_parser import Parse_PObj, Parse_List, PObj, SaveListToFile, ParseListFromFile, ParseListFromFile_asPObj


input_file = r'C:\Users\kahl\Documents\Paradox Interactive\Hearts of Iron IV\mod\lotr\portraits\input'



lst = ParseListFromFile_asPObj(input_file)

types = lst.Get("TYPES")

output = "# This file was auto-generated by generate_portraits_txt.py. Please don't edit it manually!\n\n\n"

for type in types.value:
    output += "\n\n# " + type.id + "\n"
    for continent in type.Get("CONTINENTS").value:
        output += "continent = {\n\tname = "+continent.value+"\n"
        output += lst.Get(type.id).GetValueString(withBrackets = False)
        output += "}\n"
        #print(continent.value)

    for tag in type.Get("TAGS").value:
        output += tag.value + " = {"
        output += lst.Get(type.id).GetValueString(withBrackets = False)
        output += "}\n"

#print(output)

with open(r'C:\Users\Kahl\Documents\Paradox Interactive\Hearts of Iron IV\mod\lotr\portraits\portraits_autogenerated.txt', 'w') as file:
        file.write(output)

