String floats = " 5023.23:52.3:10.4:5.9, 901.3---2.3 " ;
float[] numbers = float(split(floats, ";,-" ));
float total = 0;
for (int i = 0; i < numbers.length; i ++ ) {
  total += i;
}
float avg = total/numbers.length;

println(avg);
