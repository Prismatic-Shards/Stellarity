import os
import json

new_json = {}

for file in os.listdir("."):
  
  if not file.endswith(".json") or file == "lang.json":
    continue
  data = None
  with open(file, "r+") as f:
    
    name = file[:-5]
    print(file,name)
    data = json.load(f)

    new_json[f"painting.stellarity.{name}.author"] = data["author"]
    new_json[f"painting.stellarity.{name}.title"] = data["title"]

    data["author"] = {
      "color": "gray",
      "translate": f"painting.stellarity.{name}.author"
    }
    data["title"] = {
      "color": "yellow",
      "translate": f"painting.stellarity.{name}.title"
    }
  with open(file, "w+") as f:
    json.dump(data, f, indent=2)

    

    



with open("lang.json", "w+") as f:
  json.dump(new_json, f, indent=2)





