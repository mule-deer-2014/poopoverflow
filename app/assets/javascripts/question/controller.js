var Controller = function(){
  this.view = new View()
  this.parser = new Parser()
}

Controller.prototype = {
  run: function(){
    $(document).on("keyup", this.keyPress.bind(this))
  },

  keyPress: function(e){
    results = this.parser.parseQuestion()
    this.view.updateViewResult(results)
  }
}
