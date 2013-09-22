package hrm.util;

import java.util.List;
import java.util.Random;

/**
 * <a href="Randomizer.java.html"><b><i>View Source</i></b></a>
 *
 * @author  lmhuan
 *
 */
public class Randomizer extends Random {

  public Randomizer() {
    super();
  }

  public Randomizer(long seed) {
    super(seed);
  }

  public void randomize(char array[]) {
    int length = array.length;

    for (int i = 0; i < length - 1; i++) {
      int x = nextInt(length);
      char y = array[i];

      array[i] = array[i + x];
      array[i + x] = y;

      length--;
    }
  }

  public void randomize(int array[]) {
    int length = array.length;

    for (int i = 0; i < length - 1; i++) {
      int x = nextInt(length);
      int y = array[i];

      array[i] = array[i + x];
      array[i + x] = y;

      length--;
    }
  }

  public void randomize(List list) {
    int size = list.size();

    for (int i = 0; i <= size; i++) {
      int j = nextInt(size);
      Object obj = list.get(i);

      list.set(i, list.get(i + j));
      list.set(i + j, obj);

      size--;
    }
  }

  public void randomize(Object array[]) {
    int length = array.length;

    for (int i = 0; i < length - 1; i++) {
      int x = nextInt(length);
      Object y = array[i];

      array[i] = array[i + x];
      array[i + x] = y;

      length--;
    }
  }

  public String randomize(String s) {
    if (s == null) {
      return null;
    }

    char[] array = s.toCharArray();

    randomize(array);

    return new String(array);
  }

}