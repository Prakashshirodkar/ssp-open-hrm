
<SCRIPT>
// A function that sets cookie values properly
// The cookieName and cookieValue arguments are mandatory
// but all other arguments are optional.
// The expires argument is a Date object.
// The path defines the part of the document tree on the server
// that the cookie is valid for.
// The domain argument allows multiple server hosts to be used.
// The secure value is boolean and only applicable for use
// with HTTPS: connections.
function setCookie(cookieName, cookieValue, expires, path, domain, secure)
{
   document.cookie = escape(cookieName) + '=' + escape(cookieValue)
      + (expires ? '; EXPIRES=' + expires.toGMTString() : '')
      + (path ? '; PATH=' + path : '')
      + (domain ? '; DOMAIN=' + domain : '')
      + (secure ? '; SECURE' : '');
}

// A complementary function to unwrap a cookie.
function getCookie(cookieName)
{
   var cookieValue = null;
   var posName = document.cookie.indexOf(escape(cookieName) + '=');

   if (posName != -1)
   {
      var posValue = posName + (escape(cookieName) + '=').length;
      var endPos = document.cookie.indexOf(';', posValue);
      if (endPos != -1)
      {
         cookieValue = unescape(document.cookie.substring(posValue, endPos));
      }
      else
      {
         cookieValue = unescape(document.cookie.substring(posValue));
      }
   }
   return cookieValue;
}

// Tryout 1: Set a session cookie which expires after
//           the browser is closed
setCookie ('TRYOUT', '1');

// Tryout 2: Set a cookie which expires after 24 hours
var now = new Date();
var tomorrow = new Date(now.getTime() + 1000 * 60 * 60 * 24);
setCookie ('TRYOUT', '2', tomorrow);

// Tryout 3: Set a cookie with a path
setCookie ('TRYOUT', '3', null, '/');

// Tryout 4: Delete a cookie by setting its expiry date to
//           be sometime in the past
var now = new Date();
var yesterday = new Date(now.getTime() - 1000 * 60 * 60 * 24);
setCookie('TRYOUT', '4', yesterday);
//test only
//setCookie('huan', '5');
 //document.write(getCookie('huan'));
</SCRIPT>

