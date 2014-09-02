var View = function (){
  this.questionResultView = $("#result_view")
}

View.prototype = {
  updateViewResult: function(resultData){
    this.questionResultView.empty().append(resultData)
  }
}
