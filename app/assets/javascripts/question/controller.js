var Controller = function(){
  this.view = new View()
  this.parser = new Parser()
}

Controller.prototype{
  run: function(){
    //Bind Event Listners
  },

  keyPress: function(){
    results = this.parser.parseQuestion()
    this.view.updateViewResult(results)
  }
}
