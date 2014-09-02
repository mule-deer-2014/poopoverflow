var View = function (drawTarget){
  this.drawTarget = drawTarget
}

View.prototype = {
  updateViewResult: function(resultData){
    $(this.drawTarget).empty().append(resultData)
  }
}
