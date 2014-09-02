var Parser = function(){
}

Parser.prototype = {
  parseCharacter: function(string){
    var stringArray = string.split("")

    var counter = 0
    for(var i = 0; i < stringArray.length; i++){
      if(stringArray[i] === "*"){
        if(counter % 2 == 0){
          stringArray[i] = "<b>"
        }else{
          stringArray[i] = "</b>"
        }
        counter ++
      }
    }
    return stringArray.join("")
  },

  parseText: function(string){
    return this.parseCharacter(string)
  }
}
