
package hrm.util;

import java.io.ByteArrayOutputStream;
import java.io.PrintWriter;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;

/**
 * This class formats strings for different intentions.
 * Further implementations of methods for manipulating strings
 * should be insert here.
 *
 * @author Alexander Ilg
 * @version 1.0 [2001-05-12]
 *
 */
public class StringUtils {

	/**
	 * create a new StringUtils object
	 *
	 */
	public StringUtils() {
	}

	/**
	 * transforms the plain text String into an HTML String. The following replacments will be performed:
	 * <ul>
	 *    <li> &lt; into &amp;lt;
	 *    <li> &gt; into &amp;gt;
	 *    <li> \n into &lt;br&gt;
	 * </ul>
	 *
	 * @param text the text which should be parsed
	 * @return the parsed text
*/
    /*
	public static String textToHtml(String text) {
	  RE regex = null;
	  if (text != null) {
	    try {
	      regex = new RE("<");
	      text =  regex.substituteAll(text, "&lt;");
	      regex = new RE(">");
	      text = regex.substituteAll(text, "&gt;");
	      regex = new RE("\n");
	      text = regex.substituteAll(text, "<br>\n");
	      // Problem: Druch das Ersetzen wird ein langer String daraus
	      //          und es gibt keine Zeilenumbr�che mehr.
	      // regex = new RE("\\s");
	      // text = regex.substituteAll(text, "&nbsp;");
	      return text;
	    }
	    catch (REException e) {
	      return text;
	    }
	  }
	  else {
	    return "";
	  }
	}

*/
	/**
	 * transforms an String for use in an SQL-Statement<p>
	 * single quotes (') will be doubled ('').
	 *
	 * @param text the text which should be parsed
	 * @return the parsed text

	public static String textToSQL(String text) {
	  RE regex = null;
	  if (text != null) {
	    try {
	      regex = new RE("'");
	      text =  regex.substituteAll(text, "''");
	      return text;
	    }
	    catch (REException e) {
	      return text;
	    }
	  }
	  else {
	    return "";
	  }
	}
	*/

  /**
   * This method escapes a String and add's an ">" character to
   * the start of every line.
   *
   * @param mailText the text to escape as String
   * @return the escaped text
   */
  public final static String escapeAsReplyMail(String mailText) {

    mailText = StringUtils.replace(mailText, "\n", "\n> ") ;
    return "> " + mailText.substring(0, mailText.length() - 2);
  }
	/**
	 * Deal with null strings converting them to "" instead.  It also
	 * invokes String.trim() on the output.
	 *
	 * @param inString A String.
	 * @return A String.
	 */
	public static final String makeString(String inString) {
		return (inString == null ? "" : inString.trim());
	}

	/**
	 * Validates that the supplied string is neither <code>null</code>
	 * nor the empty string.
	 *
	 * @param inputString A String.
	 * @return A boolean.
	 */
	public static final boolean isValid(String inputString) {
		return (inputString != null && inputString.length() > 0);
	}

	/**
	 * Determine whether a (trimmed) string is empty
	 *
	 * @param inputString A String.
	 * @return A boolean.
	 */
	public static final boolean isEmpty(String inputString) {
		return (inputString == null || inputString.trim().length() == 0);
	}

	/**
	 * Returns the output of printStackTrace as a String.
	 *
	 * @param e A Throwable.
	 * @return A String.
	 */
	public static final String stackTrace(Throwable e) {
		String throwableAsString = null;
		try {
			// And show the Error Screen.
			ByteArrayOutputStream buf = new ByteArrayOutputStream();
			e.printStackTrace(new PrintWriter(buf, true));
			throwableAsString = buf.toString();
		}
		catch (Exception f) {
			// Do nothing.
		}
		return throwableAsString;
	}

	/**
	 * Returns the output of printStackTrace as a String.
	 *
	 * @param e A Throwable.
	 * @param addPre a boolean to add HTML <pre> tags around the stacktrace
	 * @return A String.
	 */
	public static final String stackTrace(Throwable e, boolean addPre) {
		if (addPre) {
			return "<pre>" + stackTrace(e) + "</pre>";
		}
		else {
			return stackTrace(e);
		}
	}

	/**
	 * Compares two Strings, returns true if their values are the
	 * same.
	 *
	 * @param s1 The first string.
	 * @param s2 The second string.
	 * @return True if the values of both strings are the same.
	 */
	public static boolean equals(String s1, String s2) {
		if (s1 == null) {
			return (s2 == null);
		}
		else if (s2 == null) {
			// s1 is not null
			return false;
		}
		else {
			return s1.equals(s2);
		}
	}

	/**
	 * Makes the first letter caps and leaves the rest as is.
	 * @param data A String
	 */
	public static String firstLetterCaps(String data) {
		StringBuffer sbuf = new StringBuffer(data.length());
		sbuf.append(data.substring(0, 1).toUpperCase()).append(data.substring(1));
		return sbuf.toString();
	}

	/**
	 * Takes a block of text which might have long lines in it and wraps
	 * the long lines based on the supplied wrapColumn parameter.
	 * If there are tabs in inString, you are going to get results that
	 * are a bit strange, since tabs are a single character but are
	 * displayed as 4 or 8 spaces. Remove the tabs.
	 *
	 * @param inString   Text which is in need of word-wrapping.
	 * @param newline    The characters that define a newline.
	 * @param wrapColumn The column to wrap the words at.
	 * @return           The text with all the long lines word-wrapped.
	 */

	public static String wrapText(String inString, String newline, int wrapColumn) {
		StringTokenizer lineTokenizer = new StringTokenizer(inString, newline, true);
		StringBuffer stringBuffer = new StringBuffer();

		while (lineTokenizer.hasMoreTokens()) {
			try {
				String nextLine = lineTokenizer.nextToken();

				if (nextLine.length() > wrapColumn) {
					// This line is long enough to be wrapped.
					nextLine = wrapLine(nextLine, newline, wrapColumn);
				}

				stringBuffer.append(nextLine);
			}
			catch (NoSuchElementException nsee) {
				// thrown by nextToken(), but I don't know why it would
				break;
			}
		}

		return (stringBuffer.toString());
	}

  /**
   * This method looks for Strings/URLS starting with http:// and surround's
   * them with an href tag with link to the surrounded URL
   *
   * @param text a String
   * @param targetBlank if true, a target="_blank" attribute will be add to the Tag
   * @return a String in which every URL is surrounded with a HTML href Tag.
   */
  public final static String escapeURLs(String text, boolean targetBlank) {
    StringTokenizer st = new StringTokenizer(text);
    StringBuffer newText = new StringBuffer();
    while (st.hasMoreTokens()) {
       newText.append(addHrefTag(st.nextToken(), targetBlank) + " ");
       //System.out.println("token");
    }
    return newText.toString();
  }

  /**
   * This static method check's if the param String starts with one
   * of the following substrings:<br/>
   * <ul>
   *   <li> http:// </li>
   *   <li> https:// </li>
   *   <li> ftp:// </li>
   *   <li> mailto: </li>
   * If yes, it surrounds the String with a HTML href Tag.
   *
   * @param token the String that's maybe  an URL
   * @param targetBlank if true, a target="_blank" attribute will be add to the Tag
   * @return a String with surrounding HTML href Tag (if token was a URL)
   */
  private final static String addHrefTag(String token, boolean targetBlank) {
    if (token.startsWith("http://") || token.startsWith("www.") || token.startsWith("https://") || token.startsWith("mailto:") || token.startsWith("ftp://")) {
      String target = "";
      if (targetBlank) {
        target = " target=\"_blank\" ";
      }
      if (token.startsWith("www.")) {
        return "<a href=\"http://" + token + "\"" + target + ">" + token + "</a>";
      }
      return "<a href=\"" + token + "\"" + target + ">" + token + "</a>";
    }
    else {
      return token;
    }
  }

	/**
	 * Wraps a single line of text. Called by wrapText(). I can't
	 * think of any good reason for exposing this to the public,
	 * since wrapText should always be used AFAIK.
	 *
	 * @param line       A line which is in need of word-wrapping.
	 * @param newline    The characters that define a newline.
	 * @param wrapColumn The column to wrap the words at.
	 * @return           A line with newlines inserted.
	 */

	protected static String wrapLine(String line, String newline, int wrapColumn) {
		StringBuffer wrappedLine = new StringBuffer();

		while (line.length() > wrapColumn) {
			int spaceToWrapAt = line.lastIndexOf(' ', wrapColumn);

			if (spaceToWrapAt >= 0) {
				wrappedLine.append(line.substring(0, spaceToWrapAt));
				wrappedLine.append(newline);
				line = line.substring(spaceToWrapAt + 1);
			}

			// This must be a really long word or URL. Pass it
			// through unchanged even though it's longer than the
			// wrapColumn would allow. This behavior could be
			// dependent on a parameter for those situations when
			// someone wants long words broken at line length.
			else {
				spaceToWrapAt = line.indexOf(' ', wrapColumn);

				if (spaceToWrapAt >= 0) {
					wrappedLine.append(line.substring(0, spaceToWrapAt));
					wrappedLine.append(newline);
					line = line.substring(spaceToWrapAt + 1);
				}
				else {
					wrappedLine.append(line);
					line = "";
				}
			}
		}

		// Whatever is left in line is short enough to just pass through,
		// just like a small small kidney stone
		wrappedLine.append(line);

		return (wrappedLine.toString());
	}

	/**
	* This static method cut's an string at newLenght -3 and adds "..." at
	* the end of the string
	*
	* @param inputString
	* @param newLenght the lenght of the new String
	*
	* @return the new String
	*
	*/
	public static String cutString(String inputString, int newLenght) {

		newLenght = newLenght - 3;
		String returnString = null;

		if (inputString.length() > newLenght) {
			returnString = inputString.substring(0, newLenght);
			return returnString + "...";
		}
		else {
			return inputString;
		}

	}

	/**
	* This static method splits an string into an array of strings
	*
	*
	* @param inputString
	* @param delimiter
	*
	* @return array of strings
	*
	*/
	public static String[] split(String inputString, String delimiter) {

		StringTokenizer stok = new StringTokenizer(inputString, delimiter);
		int numberOfTokens = stok.countTokens();
		String[] newString = new String[numberOfTokens];
		int n;

		for (n = 0; n < numberOfTokens; n++) {
			newString[n] = stok.nextToken();
		}

		return newString;
	}

	/**
	 * This method replaces all tab-chars (\t) with spaces
	 *
	 * @param inputString
	 * @return the String without tabs
	 *
	 */
	public static String removeTabs(String inputString) {
		return inputString.replace('\t', ' ');
	}

	/**
	 * This method replaces all End of Line Charactars (\n) with spaces
	 *
	 * @param inputString
	 * @return the String without \n
	 *
	 */
	public static String removeEndOfLine(String inputString) {
		return inputString.replace('\n', ' ');
	}

	/**
	 * Highlights words in a string. Words matching ignores case. The actual
	 * higlighting method is specified with the start and end higlight tags.
	 * Those might be beginning and ending HTML bold tags, or anything else.
	 *
	 * <p>
	 * Copyright (C) 2000 CoolServlets.com. All rights reserved.
	 *
	 * @param string the String to highlight words in.
	 * @param words an array of words that should be highlighted in the string.
	 * @param startHighlight the tag that should be inserted to start highlighting.
	 * @param endHighlight the tag that should be inserted to end highlighting.
	 * @return a new String with the specified words highlighted.
	 *
	 */
	public static final String highlightWords(String string, String[] words, String startHighlight, String endHighlight) {
		if (string == null || words == null || startHighlight == null || endHighlight == null) {
			return null;
		}

		//Iterate through each word.
		for (int x = 0; x < words.length; x++) {
			//we want to ignore case.
			String lcString = string.toLowerCase();
			//using a char [] is more efficient
			char[] string2 = string.toCharArray();
			String word = words[x].toLowerCase();

			//perform specialized replace logic
			int i = 0;
			if ((i = lcString.indexOf(word, i)) >= 0) {
				int oLength = word.length();
				StringBuffer buf = new StringBuffer(string2.length);

				//we only want to highlight distinct words and not parts of
				//larger words. The method used below mostly solves this. There
				//are a few cases where it doesn't, but it's close enough.
				boolean startSpace = false;
				char startChar = ' ';
				if (i - 1 > 0) {
					startChar = string2[i - 1];
					if (!Character.isLetter(startChar)) {
						startSpace = true;
					}
				}
				boolean endSpace = false;
				char endChar = ' ';
				if (i + oLength < string2.length) {
					endChar = string2[i + oLength];
					if (!Character.isLetter(endChar)) {
						endSpace = true;
					}
				}
				if ((startSpace && endSpace) || (i == 0 && endSpace)) {
					buf.append(string2, 0, i);
					if (startSpace && startChar == ' ') {
						buf.append(startChar);
					}
					buf.append(startHighlight);
					buf.append(string2, i, oLength).append(endHighlight);
					if (endSpace && endChar == ' ') {
						buf.append(endChar);
					}
				}
				else {
					buf.append(string2, 0, i);
					buf.append(string2, i, oLength);
				}

				i += oLength;
				int j = i;
				while ((i = lcString.indexOf(word, i)) > 0) {
					startSpace = false;
					startChar = string2[i - 1];
					if (!Character.isLetter(startChar)) {
						startSpace = true;
					}

					endSpace = false;
					if (i + oLength < string2.length) {
						endChar = string2[i + oLength];
						if (!Character.isLetter(endChar)) {
							endSpace = true;
						}
					}
					if ((startSpace && endSpace) || i + oLength == string2.length) {
						buf.append(string2, j, i - j);
						if (startSpace && startChar == ' ') {
							buf.append(startChar);
						}
						buf.append(startHighlight);
						buf.append(string2, i, oLength).append(endHighlight);
						if (endSpace && endChar == ' ') {
							buf.append(endChar);
						}
					}
					else {
						buf.append(string2, j, i - j);
						buf.append(string2, i, oLength);
					}
					i += oLength;
					j = i;
				}
				buf.append(string2, j, string2.length - j);
				string = buf.toString();
			}
		}
		return string;
	}

	/**
	 * Replaces all instances of oldString with newString in line.
	 *
	 * <p>
	 *
	 * @param line the String to search to perform replacements on
	 * @param oldString the String that should be replaced by newString
	 * @param newString the String that will replace all instances of oldString
	 *
	 * @return a String will all instances of oldString replaced by newString
	 *
	 */
	public static final String replace(String line, String oldString, String newString) {
		if (line == null) {
			return null;
		}
		int i = 0;
		if ((i = line.indexOf(oldString, i)) >= 0) {
			char[] line2 = line.toCharArray();
			char[] newString2 = newString.toCharArray();
			int oLength = oldString.length();
			StringBuffer buf = new StringBuffer(line2.length);
			buf.append(line2, 0, i).append(newString2);
			i += oLength;
			int j = i;
			while ((i = line.indexOf(oldString, i)) > 0) {
				buf.append(line2, j, i - j).append(newString2);
				i += oLength;
				j = i;
			}
			buf.append(line2, j, line2.length - j);
			return buf.toString();
		}
		return line;
	}

	/**
	 * Replaces all instances of oldString with newString in line with the
	 * added feature that matches of newString in oldString ignore case.
	 * <p>
	 * Copyright (C) 2000 CoolServlets.com. All rights reserved.
	 *
	 * @param line the String to search to perform replacements on
	 * @param oldString the String that should be replaced by newString
	 * @param newString the String that will replace all instances of oldString
	 *
	 * @return a String will all instances of oldString replaced by newString
	 *
	 *
	 */
	public static final String replaceIgnoreCase(String line, String oldString, String newString) {
		if (line == null) {
			return null;
		}
		String lcLine = line.toLowerCase();
		String lcOldString = oldString.toLowerCase();
		int i = 0;
		if ((i = lcLine.indexOf(lcOldString, i)) >= 0) {
			char[] line2 = line.toCharArray();
			char[] newString2 = newString.toCharArray();
			int oLength = oldString.length();
			StringBuffer buf = new StringBuffer(line2.length);
			buf.append(line2, 0, i).append(newString2);
			i += oLength;
			int j = i;
			while ((i = lcLine.indexOf(lcOldString, i)) > 0) {
				buf.append(line2, j, i - j).append(newString2);
				i += oLength;
				j = i;
			}
			buf.append(line2, j, line2.length - j);
			return buf.toString();
		}
		return line;
	}

	public static String createFilename(String input, String replace) {
		String[] forbiddenChars = { "\\", "/", ":", "*", "?", "\"", "\'", "<", ">", "|", " ", "!" };
		for (int i = 0; i < forbiddenChars.length; i++) {
			input = StringUtils.replace(input, forbiddenChars[i], replace);
		}
		return input;
	}

}
