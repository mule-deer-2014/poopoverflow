var Parser = function(){
  this.questionForm = $("#new_question")
}

Parser.prototype = {
  parseQuestion: function(){
    var bodyValue = $(this.questionForm)[0][3].value
    var bodyArray = bodyValue.split("")
    // return bodyValue.replace(/\*/g, "<b>")
    var counter = 0
    for(var i = 0; i < bodyArray.length; i++){
      if(bodyArray[i] == "*"){
        if(counter % 2 == 0){
          bodyArray[i] = "<b>"
        }else{
          bodyArray[i] = "</b>"
        }
        counter ++
      }
    }
    console.log(bodyArray.join(""))
    return bodyArray.join("")
  }
}
