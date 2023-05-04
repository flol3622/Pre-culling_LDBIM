function insideObjAABBox(objString, point) {
  var lines = objString.split("v ");
  var vertices = [];
  for (var i = 0; i < lines.length; i++) {
    if (lines[i].trim() !== "") {
      var coords = lines[i].split(" ");
      var vertex = [
        parseFloat(coords[0]),
        parseFloat(coords[1]),
        parseFloat(coords[2]),
      ];
      vertices.push(vertex);
    }
  }
  var verticesT = transpose(vertices);
  var AABOX = [];
  for (var i = 0; i < 3; i++) {
    var minVal = Math.min.apply(Math, verticesT[i]);
    var maxVal = Math.max.apply(Math, verticesT[i]);
    AABOX.push([minVal, maxVal]);
  }

  var location = point.split(",");
  console.log(AABOX);

  for (var i = 0; i < 3; i++) {
    var position = parseFloat(location[i]);
    if (position < AABOX[i][0] || position > AABOX[i][1]) {
      return "outside";
    }
  }
  return "inside";
}

function transpose(matrix) {
  var transposedMatrix = [];
  for (var i = 0; i < matrix[0].length; i++) {
    var newRow = [];
    for (var j = 0; j < matrix.length; j++) {
      newRow.push(matrix[j][i]);
    }
    transposedMatrix.push(newRow);
  }
  return transposedMatrix;
}
