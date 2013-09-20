function StringTokenizer (str, delim) {
   this.str = str;
   this.delim = delim;
 
   this.getTokens = getTokens;
   this.hasMoreElements = hasMoreElements;
   this.nextElement = nextElement;
   this.countTokens = countTokens;
 
   this.tokens = this.getTokens();
   this.actuel = 0;
 }
 function getTokens() {
   var tokens = new Array();
   var nextToken;
 
   if (this.str.indexOf(this.delim) < 0) {
     tokens[0] = this.str;
     return tokens;
   }
 
   start = 0;
   end = this.str.indexOf(this.delim, start);
 
   var i = 0;
   
   while (this.str.length - start >= 1) {
     nextToken = this.str.slice(start, end);
     start = end + 1;
     if (this.str.indexOf (this.delim, start + 1) < 0) 
       end = this.str.length;
     else
       end = this.str.indexOf (this.delim, start + 1);
 
     nextToken = trim (nextToken);
 
     while (nextToken.slice(0, this.delim.length) == this.delim) 
       nextToken = nextToken.slice(this.delim.length);
 
     nextToken = trim(nextToken);
 
     if (nextToken == "") continue;
     tokens[i++] = nextToken;
   }
   
   return tokens;
 }
 
 function trim (strToTrim) {
   return(strToTrim.replace(/^\s+|\s+$/g, ''));
 }
 
 function countTokens() {
   return this.tokens.length;
 }
 function nextElement() {
   if (this.actuel >= this.tokens.length)
     return null;
   else {
     var r = this.tokens[this.actuel];
     this.actuel++;
     return r;
   }
 }
 
 function hasMoreElements() {
   return this.actuel < this.tokens.length;
 }
