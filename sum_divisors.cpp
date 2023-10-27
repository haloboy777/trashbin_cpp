#include <cstdio>
#include <utility>
#include <vector>
using namespace std;

/*
 *
 * Find all integers between m and n (m and n integers with 1 <= m <= n) such
 * that the sum of their squared divisors is itself a square. We will return an
 * array of subarrays or of tuples (in C an array of Pair) or a string. The
 * subarrays (or tuples or Pairs) will have two elements: first the number the
 * squared divisors of which is a square and then the sum of the squared
 * divisors.
 *
 *
 * if 22 divides 44
 * then sum of 22
 *
 */

static long long allDivisors(long long num) {
  long long sum = 0;
  for (long long i = 1; i <= num; i++) {
    if (num % i == 0) {
      sum += (i * i);
    }
  }
  return sum;
}

static vector<pair<long long, long long>> listSquared(long long m,
                                                      long long n) {
  vector<pair<long long, long long>> sq_list;
  // printf("><><><><><><>%lld\t%lld\n", m, n);
  for (long long i = m; i <= n; i++) {
    long long i_sum = allDivisors(i);
    // printf("=======%lld\t%lld\n", i, i_sum);
    if (i * i == i_sum) {
      pair<long long, long long> sum_pair(i, i_sum);
      sq_list.push_back(sum_pair);
    }
  }
  return sq_list;
}

int main() {

  vector<pair<long long, long long>> sq_list = listSquared(1, 250);
  printf("size: %ld\n", sq_list.size());
  for (int i = 0; i < sq_list.size(); i++) {
    printf("%lld\t%lld\n", sq_list[i].first, sq_list[i].second);
  }
  return 0;
}
