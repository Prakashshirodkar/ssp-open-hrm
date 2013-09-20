function initmain(){
if (document.images) {

  image8off = new Image();
  image8off.src = "../bt/xemnormal1.gif";
  
  image9off = new Image();
  image9off.src = "../bt/tchunormal.gif";

  image10off = new Image();
  image10off.src = "../bt/lognormal.gif";
  
  image8on = new Image();
  image8on.src = "../bt/xemover1.gif";
  
  image9on = new Image();
  image9on.src = "../bt/tchuover.gif";

  image10on = new Image();
  image10on.src = "../bt/logover.gif";

  imageA = new String();
  imageStore = new Image();
  imageStoreSrc = new Image();
  }
}
function changeImages() {
  if (document.images) {
    for (var i=0; i<2; i+=2) {
      document[changeImages.arguments[i]].src = eval(changeImages.arguments[i+1] + ".src");    
    }    
  }
}
