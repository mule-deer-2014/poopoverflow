var Controller = function(targetInput, viewObject){
  this.view = viewObject
  this.selectedTarget = targetInput
  this.parser = new Parser()
}

Controller.prototype = {
  run: function(){
    $(this.selectedTarget).on("keyup", this.keyPress.bind(this))
  },

  keyPress: function(e){
    results = this.parser.parseText(e.target.value)
    this.view.updateViewResult(results)
  }
}


$(document).ready(function(){
  var my_controller = new Controller($("#question_body"), new View($("#result_view")))

  my_controller.run()
})
