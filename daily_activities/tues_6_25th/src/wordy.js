function Calculate(question) {
  var nArray = question.match(/What is (-?\d+) (plus|minus|times|over) (-?\d+)/);
  var operand = nArray[2];

    if(operand == 'plus'){
        return parseInt(nArray[1], 10) + parseInt(nArray[3], 10);
    } else if (operand == 'minus'){
        return parseInt(nArray[1], 10) - parseInt(nArray[3], 10);
    } else if (operand == 'times'){
        return parseInt(nArray[1], 10) * parseInt(nArray[3], 10);
    } else if (operand == 'over'){
        return parseInt(nArray[1], 10) / parseInt(nArray[3], 10);
    } else {
        console.log("Cannot Compute...");
    }
}
