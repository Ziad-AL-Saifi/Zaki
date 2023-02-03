int getNextPage(int index) {
  int nextPage = ++index;
  if (index == 4) {
    nextPage = 0;
  }
  return nextPage;
}

int getPrevPage(int index) {
  int nextPage = --index;
  if (index == -1) {
    nextPage = 3;
  }
  return nextPage;
}
