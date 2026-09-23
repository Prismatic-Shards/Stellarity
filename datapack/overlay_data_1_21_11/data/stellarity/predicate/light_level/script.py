for i in range(0,15):
  with open(f"{i}.json","w") as f:
    f.write("""{
  "condition": "any_of",
  "terms": [
    {
      "condition": "location_check",
      "predicate": {
        "light": {
          "light": +
        }
      }
    },
    {
      "condition": "location_check",
      "offsetX": 1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    },
    {
      "condition": "location_check",
      "offsetX": -1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    },
    {
      "condition": "location_check",
      "offsetY": 1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    },
    {
      "condition": "location_check",
      "offsetY": -1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    },
    {
      "condition": "location_check",
      "offsetZ": 1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    },
    {
      "condition": "location_check",
      "offsetZ": -1,
      "predicate": {
        "light": {
          "light": 0
        }
      }
    }
  ]
}

""".replace("0",str(i+1)).replace("+",str(i)))
    f.close()