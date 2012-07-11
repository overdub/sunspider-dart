// The Great Computer Language Shootout
// http://shootout.alioth.debian.org/
//
// modified by Isaac Gouy

String pad(num number, num width) {
  var s = number.toString();
  var prefixWidth = width - s.length;
  if (prefixWidth>0){
     for (var i=1; i<=prefixWidth; i++) s = " ${s}";
  }
  return s;
}

num nsieve(num m, List<bool> isPrime) {
  var i, k, count;

  for (i=2; i<=m; i++) { isPrime[i] = true; }
  count = 0;

  for (i=2; i<=m; i++){
    if (isPrime[i]) {
      for (k=i+i; k<=m; k+=i) isPrime[k] = false;
      count++;
    }
  }
  return count;
}

void sieve() {
  for (var i = 1; i <= 3; i++ ) {
    var m = (1<<i)*10000;
    var flags = new List(m+1);
    nsieve(m, flags);
  }
}

void main() {
  sieve();
}
