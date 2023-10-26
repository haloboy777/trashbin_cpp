#include <iostream>
#include <vector>
using namespace std;

std::string reverse_words(std::string str) {
  vector<char> word;
  vector<char> sen;
  int len = str.length();
  for (int i = 0; i <= len; i++) {
    if (str[i] == ' ' || str[i] == '\0') {
      int w_len = word.size();
      for (int j = w_len - 1; j >= 0; j--) {
        sen.push_back(word[j]);
      }
      if (w_len > 0)
        word.clear();
      sen.push_back(str[i]);
    } else {
      word.push_back(str[i]);
    }
  }

  return string(sen.begin(), sen.end());
}

int main() {

  string str = "The quick brown fox jumps over the lazy dog.";

  printf("%s", reverse_words(str).c_str());

  return 0;
}
